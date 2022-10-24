# frozen_string_literal: true

module Aws
  module S3Control
    module Plugins
      # @api private
      class Dualstack < Seahorse::Client::Plugin
        def add_handlers(handlers, config)
          handlers.add(OptionHandler, step: :initialize)
          handlers.add(DualstackHandler, step: :build, priority: 11)
        end

        # @api private
        class OptionHandler < Seahorse::Client::Handler
          def call(context)
            # Support client configuration and per-operation configuration
            if context.params.is_a?(Hash)
              dualstack = context.params.delete(:use_dualstack_endpoint)
            end
            dualstack = context.config.use_dualstack_endpoint if dualstack.nil?
            # Raise if :endpoint and dualstack are both provided
            if dualstack && !context.config.regional_endpoint
              raise ArgumentError,
                    'Cannot use both :use_dualstack_endpoint and :endpoint'
            end
            context[:use_dualstack_endpoint] = dualstack
            @handler.call(context)
          end
        end

        # @api private
        class DualstackHandler < Seahorse::Client::Handler
          def call(context)
            # if it's a regional endpoint and not an ARN, then construct the
            # endpoint. regional endpoint plugin uses the dualstack config
            if context.config.regional_endpoint && !context.metadata[:s3_arn]
              new_endpoint = Aws::Partitions::EndpointProvider.resolve(
                context.config.region,
                's3-control',
                'regional',
                {
                  dualstack: context[:use_dualstack_endpoint],
                  fips: context.config.use_fips_endpoint
                }
              )
              endpoint = URI.parse(context.http_request.endpoint.to_s)
              endpoint.host = URI.parse(new_endpoint).host
              context.http_request.endpoint = endpoint
            end
            @handler.call(context)
          end
        end

      end
    end
  end
end
