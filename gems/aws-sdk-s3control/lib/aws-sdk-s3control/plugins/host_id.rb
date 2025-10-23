# frozen_string_literal: true

module Aws
  module S3Control
    # @api private
    module Plugins
      # Adds the extended host id to the context when available.
      # @see https://docs.aws.amazon.com/AmazonS3/latest/API/get-request-ids.html
      # @api private
      class HostId < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            response = @handler.call(context)
            headers = context.http_response.headers
            context[:s3_host_id] = headers['x-amz-id-2']
            response
          end
        end

        handler(Handler, step: :sign)
      end
    end
  end
end
