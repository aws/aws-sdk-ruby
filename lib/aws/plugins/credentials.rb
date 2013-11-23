module Aws
  module Plugins

    # @seahorse.client.option [String] :access_key_id Your AWS account
    #   access key ID.  Defaults to `ENV['AWS_ACCESS_KEY_ID']`.
    #
    # @seahorse.client.option [String] :secret_access_key Your AWS account
    #   secret access key.  Defaults to `ENV['AWS_SECRET_ACCESS_KEY']`.
    #
    # @seahorse.client.option [String] :session_token If your credentials
    #   are temporary session credentials, this should be the
    #   session token.  Defaults to `ENV['AWS_SESSION_TOKEN']`.
    #
    # @seahorse.client.option [Credentials] :credentials
    #   Your AWS account credentials.  Defaults to a new {Credentials} object
    #   populated by `:access_key_id`, `:secret_access_key` and
    #   `:session_token`.
    #
    class Credentials < Seahorse::Client::Plugin

      option(:access_key_id) {
        ENV['AWS_ACCESS_KEY_ID'] || ENV['AMAZON_ACCESS_KEY_ID']
      }

      option(:secret_access_key) {
        ENV['AWS_SECRET_ACCESS_KEY'] || ENV['AMAZON_SECRET_ACCESS_KEY']
      }

      option(:session_token) {
        ENV['AWS_SESSION_TOKEN'] || ENV['AMAZON_SESSION_TOKEN']
      }

      option(:credentials) do |config|
        credentials = Aws::Credentials.new(
          config.access_key_id,
          config.secret_access_key,
          config.session_token)
        credentials.set? ? credentials : nil
      end

      def after_initialize(client)
        if client.config.credentials.nil? or !client.config.credentials.set?
          raise Errors::MissingCredentialsError
        end
      end

    end
  end
end
