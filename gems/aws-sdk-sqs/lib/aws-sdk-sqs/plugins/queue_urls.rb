# frozen_string_literal: true

module Aws
  module SQS
    module Plugins
      # @api private
      class QueueUrls < Seahorse::Client::Plugin
        # Extract region from a provided queue_url
        class Handler < Seahorse::Client::Handler
          def call(context)
            if (queue_url = context.params[:queue_url])
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
            if (queue_region = parse_region(queue_url))
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

          # take the first component after the SQS service component
          # Will return us-east-1 for:
          #   https://sqs.us-east-1.amazonaws.com/1234567890/demo
          #   https://vpce-x-y.sqs.us-east-1.vpce.amazonaws.com/1234567890/demo
          # Will not return for:
          #   https://localstack-sqs.example.dev/queue/example
          def parse_region(url)
            parts = URI.parse(url).host.split('.')
            parts.each_with_index do |part, index|
              if part == 'sqs'
                # assume region is the part right after the 'sqs' part
                return parts[index + 1]
              end
            end
            nil # no region found
          end

        end

        handler(Handler)

      end
    end
  end
end
