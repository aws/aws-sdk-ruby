# frozen_string_literal: true

module Aws
  # Auto-refreshing token provider that loads a cached access token from disk derived from the AWS SSO device grant
  # authorization flow.
  class SSOOIDCTokenProvider
    include IdentityProvider
    include Smithy::Client::RefreshingIdentityProvider

    # Raised when SSO Token is invalid
    class InvalidSSOToken < RuntimeError; end

    # @param [Hash] options
    # @option options [required, String] :sso_session The SSO Session used to for fetching this token.
    # @option options [required, String] :sso_region The AWS region where the SSO directory for the given sso_session
    #   is hosted.
    # @option options [SSOOIDC::Client] :client Optional `SSOOIDC::Client`. If not provided, a client will be
    #   constructed.
    def initialize(options = {})
      unless defined?(Aws::SSOOIDC)
        raise 'The aws-sdk-ssooidc gem must be required in order to use SSOOIDCTokenProvider.'
      end

      missing_keys = %i[sso_region sso_session].select { |k| options[k].nil? }
      raise ArgumentError, "Missing required keys: #{missing_keys}" unless missing_keys.empty?

      @sso_session = options.delete(:sso_session)
      @sso_region = options.delete(:sso_region)
      @client = options[:client] || SSOOIDC::Client.new(options.merge(region: @sso_region, credentials_provider: nil))

      super
    end

    # @return [SSOOIDC::Client]
    attr_reader :client

    private

    def refresh # rubocop:disable Metrics
      # token is valid and not in refresh window - do not refresh it.
      return if @expiration && !near_expiration?(sync_expiration_length)

      # token may not exist or is out of the expiration window
      # attempt to refresh from disk first (another process/application may have refreshed already)
      token_json = read_cached_token
      @expiration = token_json['expiresAt']
      @identity = SSOOIDCToken.new(token: token_json['accessToken'])
      return if @expiration && !near_expiration?(sync_expiration_length)

      # The token is expired and needs to be refreshed
      attempt_refresh(token_json) if can_refresh_token?(token_json)

      return unless !@expiration || @expiration < Time.now

      # Token is hard expired, raise an exception
      raise InvalidSSOToken, 'Token is expired and failed to refresh.'
    end

    def attempt_refresh(token_json) # rubocop:disable Metrics/AbcSize
      current_time = Time.now
      resp = @client.create_token(
        grant_type: 'refresh_token',
        client_id: token_json['clientId'],
        client_secret: token_json['clientSecret'],
        refresh_token: token_json['refreshToken']
      )
      token_json['accessToken'] = resp.access_token
      token_json['expiresAt'] = current_time + resp.expires_in
      @expiration = token_json['expiresAt']
      @identity = SSOOIDCToken.new(token: token_json['accessToken'])

      if resp.refresh_token
        token_json['refreshToken'] = resp.refresh_token
      else
        token_json.delete('refreshToken')
      end

      update_token_cache(token_json)
    rescue StandardError
      # refresh has failed, continue attempting to use the token if it's not hard expired
    end

    def read_cached_token
      cached_token = JSON.load_file(sso_cache_file)
      raise ArgumentError unless cached_token['accessToken'] && cached_token['expiresAt']

      cached_token['expiresAt'] = Time.parse(cached_token['expiresAt'])
      cached_token
    rescue Errno::ENOENT, JSON::ParserError, ArgumentError
      raise InvalidSSOToken, 'The SSO session associated with this profile has expired or is otherwise invalid. ' \
                             'To refresh this SSO session run `aws sso login` with the corresponding profile.'
    end

    def update_token_cache(token_json)
      cached_token = token_json.dup
      cached_token['expiresAt'] = cached_token['expiresAt'].iso8601
      File.write(sso_cache_file, JSON.dump(cached_token))
    end

    def sso_cache_file
      sso_session_sha1 = OpenSSL::Digest::SHA1.hexdigest(@sso_session.encode('utf-8'))
      File.join(Dir.home, '.aws', 'sso', 'cache', "#{sso_session_sha1}.json")
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      raise ArgumentError, "Unable to load sso_cache_file: ENV['HOME'] is not set."
    end

    # return true if all required fields are present
    # return false if registrationExpiresAt exists and is later than now
    def can_refresh_token?(token_json)
      if token_json['clientId'] && token_json['clientSecret'] && token_json['refreshToken']
        !token_json['registrationExpiresAt'] || Time.parse(token_json['registrationExpiresAt']) > Time.now
      else
        false
      end
    end
  end
end
