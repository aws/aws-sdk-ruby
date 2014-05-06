module Aws
  module Plugins

    # @seahorse.client.option [String] :access_key_id Your AWS account
    #   access key ID.  Defaults to `ENV['AWS_ACCESS_KEY']`.
    #   Also checks `AWS_ACCESS_KEY_ID` and `AMAZON_ACCESS_KEY_ID`.
    #
    # @seahorse.client.option [String] :secret_access_key Your AWS account
    #   secret access key.  Defaults to `ENV['AWS_SECRET_KEY']`.
    #   Also checks `AWS_SECRET_ACCESS_KEY` and `AMAZON_SECRET_ACCESS_KEY`.
    #
    # @seahorse.client.option [String] :session_token If your credentials
    #   are temporary session credentials, this should be the
    #   session token.  Defaults to `ENV['AWS_SESSION_TOKEN']`.
    #   Also checks `AMAZON_SESSION_TOKEN`.
    #
    # @seahorse.client.option [Credentials] :credentials
    #   Your AWS account credentials.  Defaults to a new {Credentials} object
    #   populated by `:access_key_id`, `:secret_access_key` and
    #   `:session_token`.
    #
    class Credentials < Seahorse::Client::Plugin

      option(:access_key_id) {
        keys = %w(AWS_ACCESS_KEY AWS_ACCESS_KEY_ID AMAZON_ACCESS_KEY_ID)
        ENV.values_at(*keys).compact.first
      }

      option(:secret_access_key) {
        keys = %w(AWS_SECRET_KEY AWS_SECRET_ACCESS_KEY AMAZON_SECRET_ACCESS_KEY)
        ENV.values_at(*keys).compact.first
      }

      option(:session_token) {
        keys = %w(AWS_SESSION_TOKEN AMAZON_SESSION_TOKEN)
        ENV.values_at(*keys).compact.first
      }

      option(:credentials) do |config|
        begin
          credentials = SharedCredentials.new
          credentials.set? ? credentials : nil
        rescue ArgumentError
          # Dir.home raises an ArgumentError when ENV['HOME'] is not set
          nil
        end
      end

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
