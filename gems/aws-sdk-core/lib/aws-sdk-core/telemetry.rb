# frozen_string_literal: true

require_relative 'telemetry/base'
require_relative 'telemetry/no_op'
require_relative 'telemetry/otel'
require_relative 'telemetry/span_kind'
require_relative 'telemetry/span_status'

module Aws
  # Observability is the extent to which a system's current state can be
  # inferred from the data it emits. The data emitted is commonly referred
  # as Telemetry. The AWS SDK for Ruby currently supports traces as
  # a telemetry signal.
  #
  # A telemetry provider is used to emit telemetry data. By default, the
  # `NoOpTelemetryProvider` will not record or emit any telemetry data.
  # The SDK currently supports OpenTelemetry (OTel) as a provider. See
  # {OTelProvider} for more information.
  #
  # If a provider isn't supported, you can implement your own provider by
  # inheriting the following base classes and implementing the interfaces
  # defined:
  # * {TelemetryProviderBase}
  # * {ContextManagerBase}
  # * {TracerProviderBase}
  # * {TracerBase}
  # * {SpanBase}
  module Telemetry
    class << self
      # @api private
      def otel_loaded?
        if @use_otel.nil?
          @use_otel =
            begin
              require 'opentelemetry-sdk'
              true
            rescue LoadError, NameError
              false
            end
        end
        @use_otel
      end

      # @api private
      def module_to_tracer_name(module_name)
        "#{module_name.gsub('::', '.')}.client".downcase
      end
    end
  end
end
