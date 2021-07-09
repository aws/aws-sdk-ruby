module Aws
  class ProviderChainCredentials
    include CredentialProvider

    def initialize(options = {})
      config = build_config(options)

      @credentials = CredentialProviderChain.new(config).resolve
    end

    def credentials
      @credentials.credentials
    end

    private

    # Constructs a {Configuration} object with a default
    # set of credential related plugins
    def build_config(options)
      config = Seahorse::Client::Configuration.new
      config.add_option(:api)
      credential_plugins.each do |plugin|
        plugin.add_options(config) if plugin.respond_to?(:add_options)
      end

      api = Seahorse::Model::Api.new.tap do |api|
        api.metadata = { }
      end

      config.build!(options.merge(api: api))
    end

    def credential_plugins
      Seahorse::Client::PluginList.new(
        [
          Aws::Plugins::CredentialsConfiguration,
          Aws::Plugins::RegionalEndpoint
        ]
      ).map { |plugin| plugin.is_a?(Class) ? plugin.new : plugin }
    end

  end
end