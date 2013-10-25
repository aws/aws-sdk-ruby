module Aws
  module Plugins
    # @api private
    class SQSQueueUrls < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          if url = context.params[:queue_url]
            update_endpoint(context, url)
            update_region(context, url)
          end
          @handler.call(context)
        end

        def update_endpoint(context, url)
          context.http_request.endpoint = url
        end

        def update_region(context, url)
          region = url.split('.')[1]
          context.config = context.config.dup
          context.config.region = region
          context.config.sigv4_region = region
        end

      end

      handler(Handler)

    end
  end
end
