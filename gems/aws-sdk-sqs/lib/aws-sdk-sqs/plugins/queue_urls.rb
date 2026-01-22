# frozen_string_literal: true

module Aws
  module SQS
    module Plugins
      # @api private
      class QueueUrls < Seahorse::Client::Plugin
        # When set to `true`, the signing region will not be modified if the configured
        # region does not match the region extracted from a provided queue url.
        #
        # When set to 'false', the signing region will be modified to use the region
        # extracted from a provided queue url if it differs from the configured region.
        option(
          :disable_queue_url_region_detection,
          default: false,
          doc_type: 'Boolean',
          docstring: <<~DOCS)
            When set to `true`, the region will not be extracted from a provided queue url. Defaults to `false`.
          DOCS

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
          # region, then we will modify signing to use it
          def update_region(context, queue_url)
            return if context.config.disable_queue_url_region_detection

            if (queue_region = parse_region(queue_url)) &&
               queue_region != context.config.region
              context[:auth_scheme]['signingRegion'] = queue_region
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
