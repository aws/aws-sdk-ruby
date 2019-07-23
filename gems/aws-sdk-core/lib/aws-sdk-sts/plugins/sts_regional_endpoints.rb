module Aws
  module STS
    module Plugins

      class STSRegionalEndpoints < Seahorse::Client::Plugin

        option(:sts_regional_endpoints,
          default: 'legacy',
          doc_type: String,
          docstring: <<-DOCS) do |cfg|
Passing in 'regional' to enable regional endpoint for STS for all supported
regions (except 'aws-global'), defaults to 'legacy' mode, using global endpoint
for legacy regions.
          DOCS
          resolve_sts_regional_endpoints(cfg)
        end

        def add_handlers(handlers, config)
          handlers.add(OptionHandler, step: :initialize)
          handlers.add(EndpointResolverHandler, step: :build, priority: 0)
        end

        # @api private
        class OptionHandler < Seahorse::Client::Handler
          def call(context)
            mode = context.params.delete(:sts_regional_endpoints)
            mode = context.config.sts_regional_endpoints if mode.nil?
            context[:sts_regional_endpoints] = mode
            @handler.call(context)
          end
        end

        # @api private
        class EndpointResolverHandler < Seahorse::Client::Handler
          def call(context)
            context.http_request.endpoint = Aws::Partitions::EndpointProvider.resolve(
              context.config.region, 'sts', context[:sts_regional_endpoints])
            @handler.call(context)
          end
        end

        private
        
        def self.resolve_sts_regional_endpoints(cfg)
          env_mode = ENV['AWS_STS_REGIONAL_ENDPOINTS']
          env_mode = nil if env_mode == ''
          cfg_mode = Aws.shared_config.sts_regional_endpoints(
            profile: cfg.profile)
          env_mode || cfg_mode || 'legacy'
        end

      end

    end
  end
end
