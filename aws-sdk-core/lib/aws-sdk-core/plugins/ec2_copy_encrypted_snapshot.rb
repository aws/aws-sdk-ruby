module Aws
  module Plugins

    # This plugin auto populates the following request params for the
    # CopySnapshot API:
    #
    # * `:destination_region`
    # * `:presigned_url`
    #
    # These params are required by EC2 when copying an encrypted snapshot.
    class EC2CopyEncryptedSnapshot < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          params = context.params
          params[:destination_region] = context.config.region
          params[:presigned_url] = presigned_url(context.client, params)
          @handler.call(context)
        end

        private

        def presigned_url(client, params)
          client = source_region_client(client, params)
          client.handle(PresignHandler, step: :build, priority: 0)
          client.handlers.remove(Handler)
          client.copy_snapshot(params).data # presigned url
        end

        def source_region_client(client, params)
          EC2::Client.new({
            region: params[:source_region] || 'region',
            credentials: client.config.credentials,
          })
        end

      end

      # This handler intentionally does NOT call the next handler in
      # the stack.  It generates a presigned url from the request
      # and returns it as the response data.
      #
      # Before signing:
      #
      # * The HTTP method is changed from POST to GET
      # * The url-encoded body is moved to the querystring
      #
      # @api private
      class PresignHandler < Seahorse::Client::Handler

        def call(context)
          convert_post_2_get(context)
          Seahorse::Client::Response.new(
            context: context,
            data: presigned_url(context.http_request, context.config))
        end

        private

        def convert_post_2_get(context)
          context.http_request.http_method = 'GET'
          context.http_request.endpoint = new_endpoint(context)
          context.http_request.body = ''
          context.http_request.headers.delete('Content-Type')
        end

        def new_endpoint(context)
          body = context.http_request.body_contents
          endpoint = context.http_request.endpoint
          endpoint.query = body
          endpoint
        end

        def presigned_url(http_request, config)
          signer = Signers::V4.new(config.credentials, 'ec2', config.region)
          signer.presigned_url(http_request, expires_in: 3600)
        end

      end

      handler(Handler, step: :initialize, operations: [:copy_snapshot])

    end
  end
end
