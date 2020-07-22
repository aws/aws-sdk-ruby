# frozen_string_literal: true

require 'set'

module Aws

  # An auto-refreshing credential provider
  # assumes role via {Aws::SSO::Client#get_role_credentials}
  # TODO: ADD DOCUMENTATION
  #
  #     sso_credentials = Aws::SSOCredentials.new(
  #       client: Aws::SSO::Client.new(...),
  #       TBD
  #     )
  #
  #     ec2 = Aws::EC2::Client.new(credentials: sso_credentials)
  #
  # If you omit `:client` option, a new {STS::Client} object will be
  # constructed.
  class SSOCredentials

    include CredentialProvider
    include RefreshingCredentials

    SSO_REQUIRED_OPTS = [:sso_account_id, :sso_region, :sso_role_name, :sso_start_url].freeze

    SSO_LOGIN_GUIDANCE = 'The SSO session associated with this profile has '\
    'expired or is otherwise invalid. To refresh this SSO session run '\
    'aws sso login with the corresponding profile.'.freeze
    # @option options [required, String] :sso_account_id
    # @option options [required, String] :sso_region
    # @option options [required, String] :sso_role_name
    # @option options [required, String] :sso_start_url
    # @option options [STS::Client] :client
    def initialize(options = {})
      client_opts = {}
      # TODO: Check that SSO is loaded - raise an error
      # TODO: Improve error class/message.  Does this live here?
      unless (missing_keys = options.keys - SSO_REQUIRED_OPTS).empty?
        raise ArgumentError, "Missing required keys: #{missing_keys}"
      end
      @sso_start_url = options.delete(:sso_start_url)
      @sso_region = options.delete(:sso_region)
      @sso_role_name = options.delete(:sso_role_name)
      @sso_account_id = options.delete(:sso_account_id)

      # validate we can read the token file
      read_cached_token

      options.each_pair do |key, value|
        client_opts[key] = value
      end
      client_opts[:region] = @sso_region
      client_opts[:credentials] = nil
      @client = client_opts[:client] || SSO::Client.new(client_opts)
      super
    end

    # @return [STS::Client]
    attr_reader :client

    def read_cached_token
      cached_token = Json.load(File.read(sso_cache_file))
      # validation
      unless cached_token['accessToken'] && cached_token['expiresAt']
        raise ArgumentError, 'Missing required field(s)'
      end
      expires_at = DateTime.parse(cached_token['expiresAt'])
      if expires_at < DateTime.now
        raise ArgumentError, 'Cached SSO Token is expired.'
      end
      cached_token
    rescue Aws::Json::ParseError, ArgumentError
      raise Errors::InvalidSSOCredentials, SSO_LOGIN_GUIDANCE
    end

    private

    def refresh
      cached_token = read_cached_token
      c = @client.get_role_credentials(
        account_id: @sso_account_id,
        role_name: @sso_role_name,
        access_token: cached_token['accessToken']
      ).role_credentials

      @credentials = Credentials.new(
        c.access_key_id,
        c.secret_access_key,
        c.session_token
      )
      @expiration = c.expiration
    end

    def sso_cache_file
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(@sso_start_url.encode('utf-8'))
      File.expand_path "~/.aws/sso/cache/#{start_url_sha1}.json"
    end
  end
end
