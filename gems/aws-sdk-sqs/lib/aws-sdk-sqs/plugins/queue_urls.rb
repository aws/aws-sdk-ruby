# frozen_string_literal: true

module Aws
  module SQS
    module Plugins
      # @api private
      class QueueUrls < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            if queue_url = context.params[:queue_url]
              update_endpoint(context, queue_url)
              update_region(context, queue_url)
            end
            @handler.call(context)
          end

          def update_endpoint(context, url)
            context.http_request.endpoint = url
          end

          # If the region in the queue url is not the configured
          # region, then we will modify the request to have
          # a sigv4 signer for the proper region.
          def update_region(context, queue_url)
            if queue_region = parse_region(queue_url)
              if queue_region != context.config.region
                config = context.config.dup
                config.region = queue_region
                config.sigv4_region = queue_region
                config.sigv4_signer = Aws::Plugins::SignatureV4.build_signer(config)
                context.config = config
              end
            end
          end

          private

          # take the first component after service delimiter
          # https://sqs.us-east-1.amazonaws.com/1234567890/demo
          # https://vpce-x-y.sqs.us-east-1.vpce.amazonaws.com/1234567890/demo
          def parse_region(url)
            parts = url.split('sqs.')
            parts[1].split('.').first if parts.size > 1
          end

        end

        handler(Handler)

      end
    end
  end
end
