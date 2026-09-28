# frozen_string_literal: true

module Aws
  module Core
    # @api private
    class CredentialsProviderChain # rubocop:disable Metrics/ClassLength
      def initialize(config)
        @config = config
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
          code_profile_credentials
          env_static_credentials
          env_assume_role_web_identity_credentials
          profile_static_credentials
          profile_assume_role_credentials
          profile_assume_role_web_identity_credentials
          profile_sso_credentials
          profile_login_credentials
          profile_process_credentials
          container_credentials
          instance_profile_credentials
        ]
      end

      def profile_based_providers
        %i[
          profile_static_credentials
          profile_assume_role_credentials
          profile_assume_role_web_identity_credentials
          profile_sso_credentials
          profile_login_credentials
          profile_process_credentials
        ]
      end

      # 1. Resolve static credentials from code when client is configured directly with
      #    access key id and secret access key.
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

      # 2. Resolve profile-based credentials from code when client is configured explicitly
      #    with a profile. All profile-based credentials providers are checked in default
      #    chain order for the configured profile.
      def code_profile_credentials
        return unless @config.profile

        profile_based_providers.each do |method_name|
          Smithy::Client::Features.track('CREDENTIALS_CODE') do
            provider = send(method_name)
            if provider&.set?
              provider.features << 'CREDENTIALS_CODE'
              return provider
            end
          end
        end

        nil
      end

      def resolve_profile_config
        Aws.shared_config.profiles[@config.profile] || {}
      end

      # 3. Resolve static credentials from environment when environment variables for
      #    access key id and secret access key are set.
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

      # 4. Resolve assume role with web identity credentials from environment when
      #    environment variables for web identity token file and role arn are set.
      def env_assume_role_web_identity_credentials
        token_file = ENV.fetch('AWS_WEB_IDENTITY_TOKEN_FILE', nil)
        role_arn = ENV.fetch('AWS_ROLE_ARN', nil)
        return unless defined?(Aws::STS) && token_file && role_arn

        Smithy::Client::Features.track('CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN') do
          provider = AssumeRoleWebIdentityCredentialsProvider.new(
            web_identity_token_file: token_file,
            role_arn: role_arn,
            role_session_name: ENV.fetch('AWS_ROLE_SESSION_NAME', nil)
          )
          provider.features = %w[CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID]
          provider
        end
      end

      # 5. Resolve static credentials from profile when shared config for resolved
      #    profile is configured with access key id and secret access key.
      def profile_static_credentials(options = {})
        profile_config = options[:profile_config] || resolve_profile_config
        return unless profile_config['aws_access_key_id'] && profile_config['aws_secret_access_key']

        # If initial profile contains source_profile configuration for AssumeRoleCredentialsProvider,
        # do not resolve static credentials from profile and use assume role credentials instead.
        # This is to align with existing CLI behavior.
        return if options[:profile_config].nil? && profile_config['role_arn'] && profile_config['source_profile']

        provider = StaticCredentialsProvider.new(
          access_key_id: profile_config['aws_access_key_id'],
          secret_access_key: profile_config['aws_secret_access_key'],
          session_token: profile_config['aws_session_token'],
          account_id: profile_config['aws_account_id']
        )
        provider.features = ['CREDENTIALS_PROFILE']
        provider
      end

      # 6. Resolve assume role credentials from profile when shared config for resolved
      #    profile is configured with role arn and source profile or credential source.
      def profile_assume_role_credentials(options = {})
        # Explicitly resolve default profile name when @config.profile is nil for circular profile reference check
        profile = options[:profile] || resolve_profile
        profile_config = Aws.shared_config.profiles[profile] || {}
        return unless valid_assume_role_inputs?(profile_config)

        source_provider = resolve_source_provider(options, profile, profile_config)
        # If AssumeRoleWebIdentityCredentialsProvider should be checked, source provider will be nil
        return unless source_provider

        Smithy::Client::Features.track(source_provider.features) do
          provider = AssumeRoleCredentialsProvider.new(assume_role_options(profile, profile_config, source_provider))
          source_provider.features << 'CREDENTIALS_STS_ASSUME_ROLE'
          provider.features = source_provider.features
          provider
        end
      end

      def resolve_profile
        @config.profile || ENV['AWS_PROFILE'] || 'default'
      end

      def valid_assume_role_inputs?(profile_config)
        return false unless defined?(Aws::STS)

        return false unless profile_config && profile_config['role_arn']

        true
      end

      def resolve_source_provider(options, profile, profile_config)
        source_profile = profile_config['source_profile']
        credential_source = profile_config['credential_source']

        if source_profile && credential_source
          raise "Profile #{profile} has a source_profile and a credential_source. For assume role credentials, it " \
                'must provide only source_profile or credential_source, not both.'
        elsif source_profile
          resolve_source_profile(options, profile, profile_config, source_profile)
        elsif credential_source
          resolve_credential_source(profile, profile_config, credential_source)
        elsif profile_config['web_identity_token_file']
          # Check AssumeRoleWebIdentityCredentialsProvider
          nil
        else
          raise "Profile #{profile} has a role_arn but no source_profile or credential_source"
        end
      end

      def resolve_source_profile(options, profile, profile_config, source_profile)
        options = visit_source_profile(options, profile, profile_config, source_profile)
        # check all profile-based credentials providers for credentials except for LoginCredentialsProvider
        providers = profile_based_providers
        providers.delete(:profile_login_credentials)
        providers.each do |method_name|
          Smithy::Client::Features.track('CREDENTIALS_PROFILE_SOURCE_PROFILE') do
            provider = send(method_name, options)
            next unless provider&.set?

            provider.features.delete('CREDENTIALS_STS_ASSUME_ROLE') if provider.is_a? AssumeRoleCredentialsProvider
            unless provider.features.first == 'CREDENTIALS_PROFILE_SOURCE_PROFILE'
              provider.features.unshift('CREDENTIALS_PROFILE_SOURCE_PROFILE')
            end
            return provider
          end
        end

        raise "Profile #{source_profile} has a role_arn and source_profile " \
              'but the source_profile does not provide credentials.'
      end

      def visit_source_profile(options, profile, profile_config, source_profile)
        visited_profiles = options[:visited_profiles] || Set[profile]
        raise "source_profile #{source_profile} does not exist." unless Aws.shared_config.profiles.key?(source_profile)

        if circular_profile_reference?(visited_profiles, profile, source_profile, profile_config)
          raise "Circular reference in assume role source profiles, have already visited: #{source_profile}"
        end

        visited_profiles.add(source_profile)
        {
          profile: source_profile,
          profile_config: Aws.shared_config.profiles[source_profile],
          visited_profiles: visited_profiles
        }
      end

      def circular_profile_reference?(visited_profiles, profile, source_profile, profile_config)
        return false unless visited_profiles.include?(source_profile)

        # If profile references itself and contains static credentials then it is a valid configuration
        if profile == source_profile && profile_config['aws_access_key_id'] && profile_config['aws_secret_access_key']
          return false
        end

        true
      end

      def resolve_credential_source(profile, profile_config, credential_source)
        case credential_source
        when 'Ec2InstanceMetadata'
          provider = instance_profile_credentials(profile_config: profile_config)
        when 'EcsContainer'
          provider = container_credentials
        when 'Environment'
          provider = env_static_credentials
        else
          raise "Unsupported credential_source found in profile #{profile}: #{credential_source}"
        end

        raise "No provider resolved for credential_source #{credential_source}" unless provider&.set?

        provider.features.unshift('CREDENTIALS_PROFILE_NAMED_PROVIDER')
        provider
      end

      def assume_role_options(profile, profile_config, source_provider)
        {
          profile: profile,
          credentials_provider: source_provider,
          role_session_name: profile_config['role_session_name'],
          role_arn: profile_config['role_arn'],
          duration_seconds: profile_config['duration_seconds']&.to_i,
          external_id: profile_config['external_id'],
          serial_number: profile_config['mfa_serial']
        }
      end

      # 7. Resolve assume role with web identity credentials from profile when shared config
      #    for resolved profile is configured with web identity token file and role arn.
      def profile_assume_role_web_identity_credentials(options = {})
        profile = options[:profile] || @config.profile
        profile_config = options[:profile_config] || resolve_profile_config
        return unless defined?(Aws::STS) && profile_config['web_identity_token_file'] && profile_config['role_arn']

        Smithy::Client::Features.track('CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN') do
          provider = AssumeRoleWebIdentityCredentialsProvider.new(
            profile: profile,
            web_identity_token_file: profile_config['web_identity_token_file'],
            role_arn: profile_config['role_arn'],
            role_session_name: profile_config['role_session_name']
          )
          provider.features = %w[CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID]
          provider
        end
      end

      # 8. Resolve sso credentials from profile when shared config for resolved profile is
      #    configured with sso session, account id, and role name.
      def profile_sso_credentials(options = {})
        profile = options[:profile] || @config.profile
        profile_config = options[:profile_config] || resolve_profile_config
        return unless valid_sso_inputs?(profile_config)

        sso_session = Aws::SharedConfig.sso_session(profile, profile_config['sso_session'])
        validate_sso_conflicts(profile, profile_config, sso_session)

        Smithy::Client::Features.track('CREDENTIALS_PROFILE_SSO') do
          provider = SSOCredentialsProvider.new(
            sso_session: profile_config['sso_session'],
            sso_account_id: profile_config['sso_account_id'],
            sso_role_name: profile_config['sso_role_name'],
            sso_region: sso_session['sso_region']
          )
          provider.features = %w[CREDENTIALS_PROFILE_SSO CREDENTIALS_SSO]
          provider
        end
      end

      def valid_sso_inputs?(profile_config)
        return false unless defined?(Aws::SSO) && defined?(Aws::SSOOIDC)

        return false unless profile_config['sso_session'] && profile_config['sso_account_id'] &&
                            profile_config['sso_role_name']

        true
      end

      def validate_sso_conflicts(profile, profile_config, sso_session)
        if profile_config['sso_region'] && profile_config['sso_region'] != sso_session['sso_region']
          raise ArgumentError,
                "The SSO region in the profile #{profile} (#{profile_config['sso_region']}) does not match " \
                "the SSO region in the SSO session #{profile_config['sso_session']} (#{sso_session['sso_region']}). " \
                "Please remove the SSO region from the profile #{profile}."
        end

        return unless profile_config['sso_start_url'] && profile_config['sso_start_url'] != sso_session['sso_start_url']

        raise ArgumentError,
              "The SSO start URL in the profile #{profile} (#{profile_config['sso_start_url']}) does not " \
              "match the SSO start URL in the SSO session #{profile_config['sso_session']} " \
              "(#{sso_session['sso_start_url']}). Please remove the SSO start URL from the profile #{profile}."
      end

      # 9. Resolve login credentials from profile when shared config for resolved profile
      #    is configured with login session.
      def profile_login_credentials
        profile_config = resolve_profile_config
        return unless profile_config['login_session']

        provider = LoginCredentialsProvider.new(login_session: profile_config['login_session'], region: @config.region)
        provider.features = %w[CREDENTIALS_PROFILE_LOGIN CREDENTIALS_LOGIN]
        provider
      end

      # 10. Resolve process credentials from profile when shared config for resolved profile
      #     is configured with credential process.
      def profile_process_credentials(options = {})
        profile_config = options[:profile_config] || resolve_profile_config
        return unless profile_config['credential_process']

        provider = ProcessCredentialsProvider.new([profile_config['credential_process']])
        provider.features = %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS]
        provider
      end

      # 11. Resolve container credentials when relative or full URI is set in the environment.
      def container_credentials
        return unless ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] || ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI']

        ContainerCredentialsProvider.new
      end

      # 12. Resolve instance profile credentials last to prevent unnecessary waiting for
      #     EC2 metadata service timeout.
      def instance_profile_credentials(options = {})
        return if ENV.fetch('AWS_EC2_METADATA_DISABLED', 'false').downcase == 'true'

        profile_config = options[:profile_config] || resolve_profile_config

        endpoint = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT', nil)
        endpoint ||= profile_config['ec2_metadata_service_endpoint']
        endpoint_mode = ENV.fetch('AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE', nil)
        endpoint_mode ||= profile_config['ec2_metadata_service_endpoint_mode']
        InstanceProfileCredentialsProvider.new(retries: 0, endpoint: endpoint, endpoint_mode: endpoint_mode)
      end
    end
  end
end
