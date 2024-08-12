# frozen_string_literal: true

module Aws
  module Plugins
    # TODO
    class Telemetry < Seahorse::Client::Plugin
      option(
        :telemetry_provider,
        default: Aws::Telemetry::NoOpTelemetryProvider,
        doc_type: Aws::Telemetry::TelemetryProviderBase,
        rbs_type: 'untyped',
        docstring: <<-DOCS) do |cfg|
          Allows you to provide a telemetry provider. By default,
          will use the NoOpTelemetryProvider.
        DOCS
        resolve_provider(cfg)
      end

      def after_initialize(client)
        validate_telemetry_provider(client.config)
      end

      def validate_telemetry_provider(config)
        unless config.telemetry_provider.is_a?(Aws::Telemetry::TelemetryProviderBase)
          raise ArgumentError,
                'Must provide a telemetry provider for the '\
                '`telemetry_provider` configuration option.'
        end
      end

      class << self
        private

        def resolve_provider(_cfg)
          Aws::Telemetry::NoOpTelemetryProvider.new
        end
      end

      # this is the root parent handler
      # sets up initial attributes to emit
      class Handler < Seahorse::Client::Handler
        def call(context)
          # serviceId may not be present in older versions
          # do I need to retrieve legacy serviceId?
          attributes = {
            'rpc.service' => context.config.api.metadata['serviceId'],
            'rpc.method' => context.operation.name,
            'code.function' => context.operation_name.to_s,
            'code.namespace' => 'AWS::Plugins::Telemetry'
          }
          context.tracer.in_span(
            parent_span_name(context),
            attributes: attributes,
            kind: Aws::Telemetry::SpanKind::CLIENT
          ) do
            @handler.call(context)
          end
        end

        private

        def parent_span_name(context)
          "#{context.config.api.metadata['serviceId']}.#{context.operation.name}".strip
        end
      end

      handler(Handler, step: :initialize, priority: 99)
    end
  end
end
