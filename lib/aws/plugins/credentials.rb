module Aws
  module Plugins
    class Credentials < Seahorse::Client::Plugin

      option(:credentials) do |config|
        Aws::Credentials.new(
          ENV['AWS_ACCESS_KEY_ID'] || ENV['AMAZON_ACCESS_KEY_ID'],
          ENV['AWS_SECRET_ACCESS_KEY'] || ENV['AMAZON_SECRET_ACCESS_KEY'],
          ENV['AWS_SESSION_TOKEN'] || ENV['AMAZON_SESSION_TOKEN']
        )
      end

      class MissingCredentialsError < RuntimeError; end

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          credentials = context.config.credentials
          if credentials.nil? or !credentials.set?
            raise Errors::MissingCredentialsError
          end
          @handler.call(context)
        end

      end

      handler(Handler, step: :validate)

    end
  end
end
