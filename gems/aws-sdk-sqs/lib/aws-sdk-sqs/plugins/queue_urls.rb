module Aws
  module SQS
    module Plugins
      # @api private
      class QueueUrls < Seahorse::Client::Plugin

        option(:disable_queue_url_override,
              default: false,
              doc_type: 'Boolean',
              docstring: <<-DOCS
Set to `true` to disable region and endpoint override from
`:queue_url` value, default to `false`
              DOCS
        )

        class Handler < Seahorse::Client::Handler

          def call(context)
            disable = !!context.config.disable_queue_url_override
            if !disable && (queue_url = context.params[:queue_url])
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
            if queue_region = queue_url.to_s.split('.')[1]
              if queue_region != context.config.region
                config = context.config.dup
                config.region = queue_region
                config.sigv4_region = queue_region
                config.sigv4_signer = Aws::Plugins::SignatureV4.build_signer(config)
                context.config = config
              end
            end
          end

        end

        handler(Handler)

      end
    end
  end
end
