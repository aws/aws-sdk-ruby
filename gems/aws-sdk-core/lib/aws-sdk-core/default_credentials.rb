# frozen_string_literal: true

module Aws
  module Core
    # Resolves the default credentials chain.
    class DefaultCredentials
      include CredentialsProvider

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
          imds_credentials
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
        nil
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

      def imds_credentials
        nil
      end
    end
  end
end
