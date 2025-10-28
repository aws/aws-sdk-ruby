# frozen_string_literal: true

module Aws
  module SQS
    # @api private
    module Plugins
      # This plugin modifies the endpoint and signing region based on the
      # provided QueueUrl parameter.
      # @api private
      class QueueUrls < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            if (queue_url = context.params[:queue_url])
              update_endpoint(context, queue_url)
              update_region(context, queue_url)
            end
            @handler.call(context)
          end

          private

          def update_endpoint(context, url)
            context.http_request.endpoint = url
          end

          def update_region(context, queue_url)
            queue_region = parse_region(queue_url)
            return unless queue_region && queue_region != context.config.region

            context.auth.signer_properties['signingRegion'] = queue_region
          end

          # Takes the first host label component after "sqs" as the region.
          # It will return us-east-1 for:
          #   https://sqs.us-east-1.amazonaws.com/1234567890/demo
          #   https://vpce-x-y.sqs.us-east-1.vpce.amazonaws.com/1234567890/demo
          # It will not return for:
          #   https://localstack-sqs.example.dev/queue/example
          def parse_region(url)
            parts = URI.parse(url).host.split('.')
            parts.each_with_index do |part, index|
              return parts[index + 1] if part == 'sqs'
            end
            nil
          end
        end

        handler(Handler, step: :sign, priority: 75)
      end
    end
  end
end
