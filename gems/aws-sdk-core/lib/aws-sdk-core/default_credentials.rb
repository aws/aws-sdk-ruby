# frozen_string_literal: true

module Aws
  module Core
    # Resolves the default credentials chain.
    class DefaultCredentials
      include IdentityProvider

      def initialize(config)
        @config = config
      end

      def provider
        return @provider if @provider

        providers.each do |method_name|
          provider = send(method_name)
          if provider
            @provider = provider
            break
          end
        end
        @provider
      end

      def identity
        provider&.identity
      end

      def features
        provider&.features
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

        creds = StaticCredentials.new(
          access_key_id: @config.access_key_id,
          secret_access_key: @config.secret_access_key,
          session_token: @config.session_token,
          account_id: @config.account_id
        )
        creds.features = ['CREDENTIALS_CODE']
        creds
      end

      def env_static_credentials
        return unless ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']

        creds = StaticCredentials.new(
          access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', nil),
          secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', nil),
          session_token: ENV.fetch('AWS_SESSION_TOKEN', nil),
          account_id: ENV.fetch('AWS_ACCOUNT_ID', nil)
        )
        creds.features = ['CREDENTIALS_ENV_VARS']
        creds
      end

      def env_assume_role_web_identity_credentials
        nil
      end

      def profile_static_credentials
        profile = @config.profile
        profile_config = Aws::Core.shared_config.profiles[profile]
        return unless profile_config &&
                      profile_config['aws_access_key_id'] &&
                      profile_config['aws_secret_access_key']

        creds = StaticCredentials.new(
          access_key_id: profile_config['aws_access_key_id'],
          secret_access_key: profile_config['aws_secret_access_key'],
          session_token: profile_config['aws_session_token'],
          account_id: profile_config['aws_account_id']
        )
        creds.features = ['CREDENTIALS_PROFILE']
        creds
      end

      def profile_assume_role_credentials
        nil
      end

      def profile_assume_role_web_identity_credentials
        nil
      end

      def profile_sso_credentials
        profile = @config.profile
        profile_config = Aws::Core.shared_config.profiles[profile]
        return unless valid_sso_inputs?(profile_config)

        sso_session = Aws::Core::SharedConfig.sso_session(profile, profile_config['sso_session'])
        validate_sso_conflicts(profile, profile_config, sso_session)

        creds = Aws::SSO::SSOCredentials.new(
          sso_session: profile_config['sso_session'],
          sso_account_id: profile_config['sso_account_id'],
          sso_role_name: profile_config['sso_role_name'],
          sso_region: sso_session['sso_region']
        )
        creds.features = %w[CREDENTIALS_PROFILE_SSO CREDENTIALS_SSO]
        creds
      end

      def valid_sso_inputs?(profile_config)
        # SSO and SSOOIDC gems must be required
        return false unless defined?(Aws::SSO::SSOCredentials) && defined?(Aws::SSOOIDC::SSOOIDCToken)

        return false unless profile_config && profile_config['sso_session'] &&
                            profile_config['sso_account_id'] && profile_config['sso_role_name']

        true
      end

      def validate_sso_conflicts(profile, profile_config, sso_session)
        if profile_config['sso_region'] && profile_config['sso_region'] != sso_session['sso_region']
          raise ArgumentError,
                "The SSO region in the profile #{profile} (#{profile_config['sso_region']}) does not match the " \
                "SSO region in the SSO session #{profile_config['sso_session']} (#{sso_session['sso_region']}). " \
                "Please remove the SSO region from the profile #{profile}."
        end

        return unless profile_config['sso_start_url'] && profile_config['sso_start_url'] != sso_session['sso_start_url']

        raise ArgumentError,
              "The SSO start URL in the profile #{profile} (#{profile_config['sso_start_url']}) does not match the " \
              "SSO start URL in the SSO session #{profile_config['sso_session']} (#{sso_session['sso_start_url']}). " \
              "Please remove the SSO start URL from the profile #{profile}."
      end

      def profile_process_credentials
        profile = @config.profile
        profile_config = Aws::Core.shared_config.profiles[profile]
        return unless profile_config && profile_config['credential_process']

        creds = ProcessCredentials.new(
          [profile_config['credential_process']]
        )
        creds.features = %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS]
        creds
      end

      def container_credentials
        return unless ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] ||
                      ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI']

        ContainerCredentials.new
      end

      def instance_profile_credentials
        return if ENV.fetch('AWS_EC2_METADATA_DISABLED', 'false').downcase == 'true'

        profile = @config.profile
        profile_config = Aws::Core.shared_config.profiles[profile]
        endpoint = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT', nil) ||
                   (profile_config && profile_config['ec2_metadata_service_endpoint'])
        endpoint_mode = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE', nil) ||
                        (profile_config && profile_config['ec2_metadata_service_endpoint_mode'])

        InstanceProfileCredentials.new(retries: 0, endpoint: endpoint, endpoint_mode: endpoint_mode)
      end
    end
  end
end
