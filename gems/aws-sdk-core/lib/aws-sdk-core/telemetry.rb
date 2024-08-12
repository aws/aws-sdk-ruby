# frozen_string_literal: true

require_relative 'telemetry/base'
require_relative 'telemetry/no_op'
require_relative 'telemetry/otel'
require_relative 'telemetry/span_kind'
require_relative 'telemetry/span_status'

module Aws
  # TODO
  module Telemetry
    class << self
      def module_to_tracer_name(module_name)
        "#{module_name.gsub('::', '.')}.client".downcase
      end

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
    end
  end
end
