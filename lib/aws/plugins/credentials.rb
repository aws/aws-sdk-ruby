module Aws
  module Plugins

    # @seahorse.client.option [required, Credentials] :credentials Your
    #   AWS credentials.  The following locations will be searched in order
    #   for credentials:
    #
    #   * `:access_key_id`, `:secret_access_key`, and `:session_token` options
    #   * ENV['AWS_ACCESS_KEY'], ENV['SECRET_ACCESS_KEY']
    #   * `HOME/.aws/credentials` shared credentials file
    #   * EC2 instance profile credentials
    #
    # @seahorse.client.option [String] :profile Used when loading credentials
    #   from the shared credentials file at HOME/.aws/credentials.  When not
    #   specified, 'default' is used.
    #
    # @seahorse.client.option [String] :access_key_id Used to set credentials
    #   statically.
    #
    # @seahorse.client.option [String] :secret_access_key_id Used to set
    #   credentials statically.
    #
    # @seahorse.client.option [String] :session_token Used to set credentials
    #   statically.
    #
    class Credentials < Seahorse::Client::Plugin

      option(:access_key_id)

      option(:secret_access_key)

      option(:session_token)

      option(:profile)

      option(:credentials) do |config|
        CredentialProviderChain.new(config).resolve
      end

      def after_initialize(client)
        if client.config.credentials.nil? or !client.config.credentials.set?
          raise Errors::MissingCredentialsError
        end
      end

    end
  end
end
