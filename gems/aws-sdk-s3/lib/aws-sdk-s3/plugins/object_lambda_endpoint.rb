# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # WriteGetObjectResponse is called from Lambda after a data transform.
      # If there is no custom endpoint, we change the endpoint from s3 to
      # s3-object-lambda just for this operation.
      class ObjectLambdaEndpoint < Seahorse::Client::Plugin
        class Handler < Seahorse::Client::Handler
          def call(context)
            if context.config.regional_endpoint
              host = context.http_request.endpoint.host
              host = host.sub('s3.', 's3-object-lambda.')
              context.http_request.endpoint.host = host
            end
            @handler.call(context)
          end
        end

        handler(Handler, operations: [:write_get_object_response])
      end
    end
  end
end
