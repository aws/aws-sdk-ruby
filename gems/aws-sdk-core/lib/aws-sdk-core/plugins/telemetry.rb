# frozen_string_literal: true

module Aws
  module Plugins
    # TODO
    class Telemetry < Seahorse::Client::Plugin
      # add config options
      option(
        :telemetry_provider,
        default: Aws::Telemetry::NoOpTelemetryProvider,
        doc_type: Aws::Telemetry::TelemetryProviderBase,
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |cfg|
          Allows you to provide a telemetry provider class. By default,
          will use the NoOpTelemetryProvider.
        DOCS
        resolve_provider(cfg)
      end

      # do we set default provider if none provided here
      # do we need to validate if there is something
      def self.resolve_provider(_cfg)
        # resolve based on whether there's otel
        # create an instance of NoOpTelemetryProvider
        Telemetry::NoOpTelemetryProvider.new
      end

      # do we need handlers?
      class Handler < Seahorse::Client::Handler
      end
    end
  end
end
