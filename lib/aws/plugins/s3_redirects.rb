module Aws
  module Plugins

    # @note This plugin is not async compatible.
    class S3Redirects < Seahorse::Client::Plugin

      option(:follow_redirects, true)

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          response = @handler.call(context)
          if response.http_response.status_code == 307
            endpoint = response.http_response.headers['location']
            endpoint = Seahorse::Client::Http::Endpoint.new(endpoint)
            context.http_request.endpoint = endpoint
            context.http_response.body.truncate(0)
            @handler.call(context)
          else
            response
          end
        end

      end

      def add_handlers(handlers, config)
        if config.follow_redirects
          # we want to re-trigger request signing
          handlers.add(Handler, step: :sign, priority: 90)
        end
      end

    end
  end
end
