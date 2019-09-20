module Aws
  # @api private
  class CredentialProviderChain

    def initialize(config = nil)
      @config = config
    end

    # @return [CredentialProvider, nil]
    def resolve
      providers.each do |method_name, options|
        provider = send(method_name, options.merge(config: @config))
        return provider if provider && provider.set?
      end
      nil
    end

    private

    def providers
      [
        [:static_credentials, {}],
        [:env_credentials, {}],
        [:assume_role_web_identity_credentials, {}],
        [:assume_role_credentials, {}],
        [:shared_credentials, {}],
        [:process_credentials, {}],
        [:instance_profile_credentials, {
          retries: @config ? @config.instance_profile_credentials_retries : 0,
          http_open_timeout: @config ? @config.instance_profile_credentials_timeout : 1,
          http_read_timeout: @config ? @config.instance_profile_credentials_timeout : 1,
        }],
      ]
    end

    def static_credentials(options)
      if options[:config]
        Credentials.new(
          options[:config].access_key_id,
          options[:config].secret_access_key,
          options[:config].session_token)
      else
        nil
      end
    end

    def env_credentials(options)
      key =    %w(AWS_ACCESS_KEY_ID     AMAZON_ACCESS_KEY_ID     AWS_ACCESS_KEY)
      secret = %w(AWS_SECRET_ACCESS_KEY AMAZON_SECRET_ACCESS_KEY AWS_SECRET_KEY)
      token =  %w(AWS_SESSION_TOKEN     AMAZON_SESSION_TOKEN)
      Credentials.new(envar(key), envar(secret), envar(token))
    end

    def envar(keys)
      keys.each do |key|
        if ENV.key?(key)
          return ENV[key]
        end
      end
      nil
    end

    def determine_profile_name(options)
      (options[:config] && options[:config].profile) || ENV['AWS_PROFILE'] || ENV['AWS_DEFAULT_PROFILE'] || 'default'
    end

    def shared_credentials(options)
      profile_name = determine_profile_name(options)
      SharedCredentials.new(profile_name: profile_name)
    rescue Errors::NoSuchProfileError
      nil
    end

    def process_credentials(options)
      config = Aws.shared_config
      profile_name = determine_profile_name(options)
      if config.config_enabled? && process_provider = config.credentials_process(profile_name)
        ProcessCredentials.new(process_provider)
      else
        nil
      end
    rescue Errors::NoSuchProfileError
      nil
    end

    def assume_role_credentials(options)
      if Aws.shared_config.config_enabled?
        assume_role_with_profile(options)
      else
        nil
      end
    end

    def assume_role_web_identity_credentials(options)
      if (role_arn = ENV['AWS_ROLE_ARN']) &&
        (token_file = ENV['AWS_WEB_IDENTITY_TOKEN_FILE'])
        AssumeRoleWebIdentityCredentials.new(
          role_arn: role_arn,
          web_identity_token_file: token_file,
          role_session_name: ENV['AWS_ROLE_SESSION_NAME']
        )
      elsif Aws.shared_config.config_enabled?
        profile = options[:config].profile if options[:config]
        Aws.shared_config.assume_role_web_identity_credentials_from_config(profile)
      else
        nil
      end
    end

    def instance_profile_credentials(options)
      if ENV["AWS_CONTAINER_CREDENTIALS_RELATIVE_URI"]
        ECSCredentials.new(options)
      else
        InstanceProfileCredentials.new(options)
      end
    end

    def assume_role_with_profile(options)
      profile_name = determine_profile_name(options)
      region = (options[:config] && options[:config].region)
      Aws.shared_config.assume_role_credentials_from_config(
        profile: profile_name,
        region: region,
        chain_config: @config
      )
    end

  end
end
