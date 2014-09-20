module Aws
  # @api private
  class CredentialProviderChain

    def initialize(config)
      @config = config
    end

    def resolve
      providers.each do |method_name, options|
        credentials = send(method_name, options.merge(config: @config))
        return credentials if credentials && credentials.set?
      end
      nil
    end

    private

    def providers
      [
        [:static_credentials, {}],
        [:env_credentials, { prefix: 'AWS' }],
        [:env_credentials, { prefix: 'AMAZON' }],
        [:env_credentials, { key:'AWS_ACCESS_KEY', secret:'AWS_SECRET_KEY' }],
        [:shared_credentials, {}],
        [:instance_profile_credentials, {}],
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
      env_keys = []
      if prefix = options[:prefix]
        env_keys << "#{prefix}_ACCESS_KEY_ID"
        env_keys << "#{prefix}_SECRET_ACCESS_KEY"
        env_keys << "#{prefix}_SESSION_TOKEN"
      else
        env_keys << options[:key]
        env_keys << options[:secret]
      end
      Credentials.new(*ENV.values_at(*env_keys))
    end

    def shared_credentials(options = {})
      SharedCredentials.new(profile_name: options[:config].profile)
    rescue Errors::NoSuchProfileError
      nil
    end

    def instance_profile_credentials(*args)
      InstanceProfileCredentials.new
    end

  end
end
