module Aws
  module Plugins

    # @seahorse_client_option [Credentials] :credentials
    #   Your AWS account credentials.  Defaults to a new {Credentials} object.
    #   This object attempts to load your credentials from:
    #
    #       ENV['AWS_ACCESS_KEY_ID']
    #       ENV['AWS_SECRET_ACCESS_KEY']
    #
    #   Alternatively, you can construct a new {Credentials} object with
    #   static values:
    #
    #       Aws::Credentials.new('akid', 'secret')
    #
    class Credentials < Seahorse::Client::Plugin

      option(:credentials) do |config|
        Aws::Credentials.new(
          ENV['AWS_ACCESS_KEY_ID'] || ENV['AMAZON_ACCESS_KEY_ID'],
          ENV['AWS_SECRET_ACCESS_KEY'] || ENV['AMAZON_SECRET_ACCESS_KEY'],
          ENV['AWS_SESSION_TOKEN'] || ENV['AMAZON_SESSION_TOKEN']
        )
      end

      def after_initialize(client)
        if client.config.credentials.nil? or !client.config.credentials.set?
          raise Errors::MissingCredentialsError
        end
      end

    end
  end
end
