# frozen_string_literal: true

module Aws
  # @api private
  class CredentialProviderChain
    def initialize(config = nil)
      @config = config
    end

    # @return [CredentialProvider, nil]
    def resolve
      puts "RESOLVING CREDENTIALS"
      providers.each do |method_name, options|
        provider = send(method_name, options.merge(config: @config))
        if provider && provider.set?
          puts method_name
          puts provider
          case method_name.to_s
          when "static_credentials"
            puts "CREDENTIALS_PROFILE: n"
          when "static_profile_assume_role_web_identity_credentials"
            puts "CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN and CREDENTIALS_STS_ASSUME_ROLE_WEB_ID: qk"
          when "static_profile_sso_credentials"
            puts "CREDENTIALS_PROFILE_SSO and CREDENTIALS_SSO: rs (NEW)"
            puts "OR"
            puts "CREDENTIALS_PROFILE_SSO_LEGACY and CREDENTIALS_SSO_LEGACY: tu (LEGACY)"
          when "static_profile_assume_role_credentials"
            puts "CREDENTIALS_PROFILE_SOURCE_PROFILE: o and ( \
                  CREDENTIALS_PROFILE: n or \
                  CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN and CREDENTIALS_STS_ASSUME_ROLE_WEB_ID: qk or \
                  CREDENTIALS_PROFILE_PROCESS and CREDENTIALS_PROCESS: vw or \
                  CREDENTIALS_PROFILE_SSO and CREDENTIALS_SSO: rs (NEW) or \
                  CREDENTIALS_PROFILE_SSO_LEGACY and CREDENTIALS_SSO_LEGACY: tu (LEGACY) \
                  ) \
                  and CREDENTIALS_STS_ASSUME_ROLE: i"
            puts "OR"
            puts "CREDENTIALS_PROFILE_NAMED_PROVIDER: p and ( \
                  CREDENTIALS_IMDS: 0 or \
                  CREDENTIALS_HTTP: z \
                  ) \
                  and CREDENTIALS_STS_ASSUME_ROLE: i"
          when "static_profile_credentials"
            puts "CREDENTIALS_PROFILE: n"
          when "static_profile_process_credentials"
            puts "CREDENTIALS_PROFILE_PROCESS and CREDENTIALS_PROCESS: vw"
          when "env_credentials"
            puts "CREDENTIALS_ENV_VARS: g"
          when "assume_role_web_identity_credentials"
            puts "CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN and CREDENTIALS_STS_ASSUME_ROLE_WEB_ID: hk"
            puts "OR"
            puts "CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN and CREDENTIALS_STS_ASSUME_ROLE_WEB_ID: qk"
          when "sso_credentials"
            puts "CREDENTIALS_PROFILE_SSO and CREDENTIALS_SSO: rs (NEW)"
            puts "OR"
            puts "CREDENTIALS_PROFILE_SSO_LEGACY and CREDENTIALS_SSO_LEGACY: tu (LEGACY)"
          when "assume_role_credentials"
            puts "CREDENTIALS_PROFILE_SOURCE_PROFILE: o and ( \
                  CREDENTIALS_PROFILE: n or \
                  CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN and CREDENTIALS_STS_ASSUME_ROLE_WEB_ID: qk or \
                  CREDENTIALS_PROFILE_PROCESS and CREDENTIALS_PROCESS: vw or \
                  CREDENTIALS_PROFILE_SSO and CREDENTIALS_SSO: rs (NEW) or \
                  CREDENTIALS_PROFILE_SSO_LEGACY and CREDENTIALS_SSO_LEGACY: tu (LEGACY) \
                  ) \
                  and CREDENTIALS_STS_ASSUME_ROLE: i"
            puts "OR"
            puts "CREDENTIALS_PROFILE_NAMED_PROVIDER: p and ( \
                  CREDENTIALS_IMDS: 0 or \
                  CREDENTIALS_HTTP: z \
                  ) \
                  and CREDENTIALS_STS_ASSUME_ROLE: i"
          when "shared_credentials"
            puts "CREDENTIALS_PROFILE: n"
          when "process_credentials"
            puts "CREDENTIALS_PROFILE_PROCESS and CREDENTIALS_PROCESS: vw"
          when "instance_profile_credentials"
            puts "CREDENTIALS_HTTP (z)"
            puts "OR"
            puts "CREDENTIALS_IMDS (0)"
          else
            puts method_name
            puts "!! UNKNOWN !!"
          end
          return provider
        end
      end
      nil
    end

    private

    def providers
      [
        [:static_credentials, {}],
        [:static_profile_assume_role_web_identity_credentials, {}],
        [:static_profile_sso_credentials, {}],
        [:static_profile_assume_role_credentials, {}],
        [:static_profile_credentials, {}],
        [:static_profile_process_credentials, {}],
        [:env_credentials, {}],
        [:assume_role_web_identity_credentials, {}],
        [:sso_credentials, {}],
        [:assume_role_credentials, {}],
        [:shared_credentials, {}],
        [:process_credentials, {}],
        [:instance_profile_credentials, {
          retries: @config ? @config.instance_profile_credentials_retries : 0,
          http_open_timeout: @config ? @config.instance_profile_credentials_timeout : 1,
          http_read_timeout: @config ? @config.instance_profile_credentials_timeout : 1
        }]
      ]
    end

    def static_credentials(options)
      if options[:config]
        credentials = Credentials.new(
          options[:config].access_key_id,
          options[:config].secret_access_key,
          options[:config].session_token,
          account_id: options[:config].account_id
        )
        credentials.metrics = ['CREDENTIALS_PROFILE']
        credentials
      end
    end

    def static_profile_assume_role_web_identity_credentials(options)
      if Aws.shared_config.config_enabled? && options[:config] && options[:config].profile
        Aws.shared_config.assume_role_web_identity_credentials_from_config(
          profile: options[:config].profile,
          region: options[:config].region
        )
      end
    end

    def static_profile_sso_credentials(options)
      if Aws.shared_config.config_enabled? && options[:config] && options[:config].profile
        Aws.shared_config.sso_credentials_from_config(
          profile: options[:config].profile
        )
      end
    end

    def static_profile_assume_role_credentials(options)
      if Aws.shared_config.config_enabled? && options[:config] && options[:config].profile
        assume_role_with_profile(options, options[:config].profile)
      end
    end

    def static_profile_credentials(options)
      if options[:config] && options[:config].profile
        credentials = SharedCredentials.new(profile_name: options[:config].profile)
        credentials.metrics = ['CREDENTIALS_PROFILE']
        credentials
      end
    rescue Errors::NoSuchProfileError
      nil
    end

    def static_profile_process_credentials(options)
      if Aws.shared_config.config_enabled? && options[:config] && options[:config].profile
        process_provider = Aws.shared_config.credential_process(profile: options[:config].profile)
        if process_provider
          credentials = ProcessCredentials.new([process_provider])
          credentials.metrics = %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS]
          credentials
        end
      end
    rescue Errors::NoSuchProfileError
      nil
    end


    def env_credentials(_options)
      key =    %w[AWS_ACCESS_KEY_ID AMAZON_ACCESS_KEY_ID AWS_ACCESS_KEY]
      secret = %w[AWS_SECRET_ACCESS_KEY AMAZON_SECRET_ACCESS_KEY AWS_SECRET_KEY]
      token =  %w[AWS_SESSION_TOKEN AMAZON_SESSION_TOKEN]
      account_id = %w[AWS_ACCOUNT_ID]
      credentials = Credentials.new(
        envar(key),
        envar(secret),
        envar(token),
        account_id: envar(account_id)
      )
      credentials.metrics = ['CREDENTIALS_ENV_VARS']
      credentials
    end

    def envar(keys)
      keys.each do |key|
        return ENV[key] if ENV.key?(key)
      end
      nil
    end

    def determine_profile_name(options)
      (options[:config] && options[:config].profile) || ENV['AWS_PROFILE'] || ENV['AWS_DEFAULT_PROFILE'] || 'default'
    end

    def shared_credentials(options)
      profile_name = determine_profile_name(options)
      credentials = SharedCredentials.new(profile_name: profile_name)
      credentials.metrics = ['CREDENTIALS_PROFILE']
      credentials
    rescue Errors::NoSuchProfileError
      nil
    end

    def process_credentials(options)
      profile_name = determine_profile_name(options)
      if Aws.shared_config.config_enabled?
        process_provider = Aws.shared_config.credential_process(profile: profile_name)
        if process_provider
          credentials = ProcessCredentials.new([process_provider])
          credentials.metrics = %w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS]
          credentials
        end
      end
    rescue Errors::NoSuchProfileError
      nil
    end

    def sso_credentials(options)
      profile_name = determine_profile_name(options)
      if Aws.shared_config.config_enabled?
        Aws.shared_config.sso_credentials_from_config(profile: profile_name)
      end
    rescue Errors::NoSuchProfileError
      nil
    end

    def assume_role_credentials(options)
      if Aws.shared_config.config_enabled?
        assume_role_with_profile(options, determine_profile_name(options))
      end
    end

    def assume_role_web_identity_credentials(options)
      region = options[:config].region if options[:config]
      if (role_arn = ENV['AWS_ROLE_ARN']) && (token_file = ENV['AWS_WEB_IDENTITY_TOKEN_FILE'])
        cfg = {
          role_arn: role_arn,
          web_identity_token_file: token_file,
          role_session_name: ENV['AWS_ROLE_SESSION_NAME'],
        }
        cfg[:region] = region if region
        with_metrics('CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN') do
          credentials = AssumeRoleWebIdentityCredentials.new(cfg)
          credentials.metrics = %w[CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID]
          credentials
        end
      elsif Aws.shared_config.config_enabled?
        profile = options[:config].profile if options[:config]
        Aws.shared_config.assume_role_web_identity_credentials_from_config(
          profile: profile,
          region: region
        )
      end
    end

    def instance_profile_credentials(options)
      profile_name = determine_profile_name(options)
      if ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] ||
         ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI']
        credentials = ECSCredentials.new(options)
        credentials.metrics = ['CREDENTIALS_HTTP']
        credentials
      else
        credentials = InstanceProfileCredentials.new(options.merge(profile: profile_name))
        credentials.metrics = ['CREDENTIALS_IMDS']
        credentials
      end
    end

    def assume_role_with_profile(options, profile_name)
      assume_opts = {
        profile: profile_name,
        chain_config: @config
      }
      if options[:config] && options[:config].region
        assume_opts[:region] = options[:config].region
      end
      Aws.shared_config.assume_role_credentials_from_config(assume_opts)
    end

    def with_metrics(metric, &block)
      Aws::Plugins::UserAgent.metric(metric, &block)
    end
  end
end
