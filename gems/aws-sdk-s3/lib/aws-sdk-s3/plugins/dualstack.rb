# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # @api private
      class Dualstack < Seahorse::Client::Plugin
        def add_handlers(handlers, config)
          handlers.add(OptionHandler, step: :initialize)
          handlers.add(DualstackHandler, step: :build, priority: 49)
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
            # only rewrite the endpoint if it's not a custom endpoint
            # accelerate/ARN already handle dualstack cases, so ignore these
            # check to see if dualstack is on but configured off via operation
            if context.config.regional_endpoint &&
               use_dualstack_endpoint?(context)
              apply_dualstack_endpoint(context)
            end
            @handler.call(context)
          end

          private

          def apply_dualstack_endpoint(context)
            new_endpoint = Aws::Partitions::EndpointProvider.resolve(
              context.config.region,
              's3',
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

          def use_dualstack_endpoint?(context)
            # case when dualstack is turned off via operation
            (context[:use_dualstack_endpoint] ||
              context.config.use_dualstack_endpoint) &&
              # accelerate plugin already applies dualstack
              !context[:use_accelerate_endpoint] &&
              # arns handle dualstack
              !context.metadata[:s3_arn]
          end
        end

      end
    end
  end
end
