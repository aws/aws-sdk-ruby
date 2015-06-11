module Aws
  # @api private
  class CredentialProviderChain

    def initialize(config)
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
        [:shared_credentials, {}],
        [:instance_profile_credentials, {
          retries: 0,
          http_open_timeout: 1,
          http_read_timeout: 1,
        }],
      ]
    end

    def static_credentials(options)
      config = options[:config]
      Credentials.new(
        config.access_key_id,
        config.secret_access_key,
        config.session_token)
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

    def shared_credentials(options = {})
      SharedCredentials.new(profile_name: options[:config].profile)
    rescue Errors::NoSuchProfileError
      nil
    end

    def instance_profile_credentials(options)
      InstanceProfileCredentials.new(options)
    end

  end
end
