# frozen_string_literal: true

require 'set'

module Aws
  # An auto-refreshing credential provider that assumes a role via
  # {Aws::STS::Client#assume_role}.
  #
  #     role_credentials = Aws::AssumeRoleCredentials.new(
  #       client: Aws::STS::Client.new(...),
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2 = Aws::EC2::Client.new(credentials: role_credentials)
  #
  # If you omit `:client` option, a new {Aws::STS::Client} object will be
  # constructed with additional options that were provided.
  #
  # @see Aws::STS::Client#assume_role
  class AssumeRoleCredentials

    include CredentialProvider
    include RefreshingCredentials

    # @option options [required, String] :role_arn
    # @option options [required, String] :role_session_name
    # @option options [String] :policy
    # @option options [Integer] :duration_seconds
    # @option options [String] :external_id
    # @option options [STS::Client] :client
    # @option options [Callable] before_refresh Proc called before
    #   credentials are refreshed.  Useful for updating tokens.
    #   `before_refresh` is called when AWS credentials are
    #   required and need to be refreshed. Tokens can be refreshed using
    #   the following example:
    #
    #      before_refresh = Proc.new do |assume_role_credentials| do
    #        assume_role_credentials.assume_role_params['token_code'] = update_token
    #      end
    #
    def initialize(options = {})
      client_opts = {}
      @assume_role_params = {}
      options.each_pair do |key, value|
        if self.class.assume_role_options.include?(key)
          @assume_role_params[key] = value
        elsif !CLIENT_EXCLUDE_OPTIONS.include?(key)
          client_opts[key] = value
        end
      end
      @client = client_opts[:client] || STS::Client.new(client_opts)
      @async_refresh = true
      @source = :none
      super
    end

    # @return [STS::Client]
    attr_reader :client

    # @return [Hash]
    attr_reader :assume_role_params

    attr_accessor :source

    attr_accessor :resolving

    def metrics
      source_profile = %w[CREDENTIALS_PROFILE_SOURCE_PROFILE CREDENTIALS_STS_ASSUME_ROLE]
      credential_source = %w[CREDENTIALS_PROFILE_NAMED_PROVIDER CREDENTIALS_STS_ASSUME_ROLE]

      if @resolving
        source_profile.pop
        credential_source.pop
      end

      case @source
      when :none
        ['CREDENTIALS_STS_ASSUME_ROLE']
      when :static
        insert_metric(source_profile, 'CREDENTIALS_PROFILE')
      when :webID
        insert_metric(source_profile, %w[CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID])
      when :process
        insert_metric(source_profile, %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS])
      when :new
        insert_metric(source_profile, %w[CREDENTIALS_PROFILE_SSO CREDENTIALS_SSO])
      when :legacy
        insert_metric(source_profile, %w[CREDENTIALS_PROFILE_SSO_LEGACY CREDENTIALS_SSO_LEGACY])
      when :instance
        insert_metric(credential_source, 'CREDENTIALS_IMDS')
      when :ecs
        insert_metric(credential_source, 'CREDENTIALS_HTTP')
      end
    end

    private

    def refresh
      metric = metrics[0...-1]
      resp = with_metrics(metric) { @client.assume_role(@assume_role_params) }
      creds = resp.credentials
      @credentials = Credentials.new(
        creds.access_key_id,
        creds.secret_access_key,
        creds.session_token,
        account_id: parse_account_id(resp)
      )
      @expiration = creds.expiration
    end

    def parse_account_id(resp)
      arn = resp.assumed_role_user&.arn
      ARNParser.parse(arn).account_id if ARNParser.arn?(arn)
    end

    def insert_metric(base, metrics)
      base.insert(1, *metrics)
    end

    def with_metrics(metrics, &block)
      Aws::Plugins::UserAgent.metric(*metrics, &block)
    end

    class << self

      # @api private
      def assume_role_options
        @aro ||= begin
          input = STS::Client.api.operation(:assume_role).input
          Set.new(input.shape.member_names)
        end
      end

    end
  end
end
