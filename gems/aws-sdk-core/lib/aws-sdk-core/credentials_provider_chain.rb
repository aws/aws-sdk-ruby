# frozen_string_literal: true

module Aws
  module Core
    # @api private
    class CredentialsProviderChain
      include IdentityProvider

      def initialize(config)
        @config = config
        @profile_config = Aws::Core.shared_config.profiles[config.profile] || {}
      end

      def resolve
        providers.each do |method_name|
          provider = send(method_name)
          return provider if provider&.set?
        end
        nil
      end

      private

      def providers
        %i[
          code_static_credentials
          env_static_credentials
          env_assume_role_web_identity_credentials
          profile_static_credentials
          profile_assume_role_credentials
          profile_assume_role_web_identity_credentials
          profile_sso_credentials
          profile_process_credentials
          container_credentials
          instance_profile_credentials
        ]
      end

      def code_static_credentials
        return unless @config.access_key_id && @config.secret_access_key

        provider = StaticCredentialsProvider.new(
          access_key_id: @config.access_key_id,
          secret_access_key: @config.secret_access_key,
          session_token: @config.session_token,
          account_id: @config.account_id
        )
        provider.features = ['CREDENTIALS_CODE']
        provider
      end

      def env_static_credentials
        return unless ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']

        provider = StaticCredentialsProvider.new(
          access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', nil),
          secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', nil),
          session_token: ENV.fetch('AWS_SESSION_TOKEN', nil),
          account_id: ENV.fetch('AWS_ACCOUNT_ID', nil)
        )
        provider.features = ['CREDENTIALS_ENV_VARS']
        provider
      end

      def env_assume_role_web_identity_credentials
        nil
      end

      def profile_static_credentials
        return unless @profile_config['aws_access_key_id'] && @profile_config['aws_secret_access_key']

        provider = StaticCredentialsProvider.new(
          access_key_id: @profile_config['aws_access_key_id'],
          secret_access_key: @profile_config['aws_secret_access_key'],
          session_token: @profile_config['aws_session_token'],
          account_id: @profile_config['aws_account_id']
        )
        provider.features = ['CREDENTIALS_PROFILE']
        provider
      end

      def profile_assume_role_credentials
        nil
      end

      def profile_assume_role_web_identity_credentials
        nil
      end

      def profile_sso_credentials
        return unless valid_sso_inputs?

        sso_session = Aws::Core::SharedConfig.sso_session(@config.profile, @profile_config['sso_session'])
        validate_sso_conflicts(sso_session)

        creds = SSOCredentialsProvider.new(
          sso_session: @profile_config['sso_session'],
          sso_account_id: @profile_config['sso_account_id'],
          sso_role_name: @profile_config['sso_role_name'],
          sso_region: sso_session['sso_region']
        )
        creds.features = %w[CREDENTIALS_PROFILE_SSO CREDENTIALS_SSO]
        creds
      end

      def valid_sso_inputs?
        return false unless defined?(Aws::SSO) && defined?(Aws::SSOOIDC)

        return false unless @profile_config['sso_session'] && @profile_config['sso_account_id'] &&
                            @profile_config['sso_role_name']

        true
      end

      def validate_sso_conflicts(sso_session)
        profile = @config.profile
        if @profile_config['sso_region'] && @profile_config['sso_region'] != sso_session['sso_region']
          raise ArgumentError,
                "The SSO region in the profile #{profile} (#{@profile_config['sso_region']}) does not match " \
                "the SSO region in the SSO session #{@profile_config['sso_session']} (#{sso_session['sso_region']}). " \
                "Please remove the SSO region from the profile #{profile}."
        end

        unless @profile_config['sso_start_url'] && @profile_config['sso_start_url'] != sso_session['sso_start_url']
          return
        end

        raise ArgumentError,
              "The SSO start URL in the profile #{profile} (#{@profile_config['sso_start_url']}) does not " \
              "match the SSO start URL in the SSO session #{@profile_config['sso_session']} " \
              "(#{sso_session['sso_start_url']}). Please remove the SSO start URL from the profile #{profile}."
      end

      def profile_process_credentials
        return unless @profile_config['credential_process']

        creds = ProcessCredentialsProvider.new([@profile_config['credential_process']])
        creds.features = %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS]
        creds
      end

      def container_credentials
        return unless ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] || ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI']

        ContainerCredentialsProvider.new
      end

      def instance_profile_credentials
        return if ENV.fetch('AWS_EC2_METADATA_DISABLED', 'false').downcase == 'true'

        endpoint = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT', nil)
        endpoint ||= @profile_config['ec2_metadata_service_endpoint']
        endpoint_mode = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE', nil)
        endpoint_mode ||= @profile_config['ec2_metadata_service_endpoint_mode']
        InstanceProfileCredentialsProvider.new(retries: 0, endpoint: endpoint, endpoint_mode: endpoint_mode)
      end
    end
  end
end
