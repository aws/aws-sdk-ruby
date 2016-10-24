module Aws
  module EC2
    module Plugins

      # This plugin auto populates the following request params for the
      # CopySnapshot API:
      #
      # * `:destination_region`
      # * `:presigned_url`
      #
      # These params are required by EC2 when copying an encrypted snapshot.
      # @api private
      class CopyEncryptedSnapshot < Seahorse::Client::Plugin

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
            Client.new({
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
            Seahorse::Client::Response.new(
              context: context,
              data: presigned_url(context.http_request, context.config)
            )
          end

          private

          def presigned_url(req, config)
            signer = Aws::Sigv4::Signer.new(
              service: 'ec2',
              region: config.region,
              credentials_provider: config.credentials,
              unsigned_headers: ['content-type', 'user-agent']
            )
            signer.presign_url(
              http_method: 'GET',
              url: "#{req.endpoint}?#{req.body_contents}",
              headers: req.headers,
              body: '',
              expires_in: 3600,
            ).to_s
          end

        end

        handler(Handler, step: :initialize, operations: [:copy_snapshot])

      end
    end
  end
end
