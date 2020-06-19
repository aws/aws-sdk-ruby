# frozen_string_literal: true

require 'pathname'
require 'set'

module Aws
  module Log
    class ParamFilter
      def initialize(options = {})
        @enabled = options[:filter_sensitive_params] != false
        @additional_filters = options[:filter] || []
      end

      def filter(values, type = nil)
        case values
        when Struct, Hash then filter_hash(values, type)
        when Array then filter_array(values, type)
        else values
        end
      end

      private

      def filter_hash(values, type)
        filters = @additional_filters
        if type.const_defined?('SENSITIVE')
          filters = type::SENSITIVE + @additional_filters
        end

        filtered = {}
        values.each_pair do |key, value|
          filtered[key] = if @enabled && filters.include?(key)
            '[FILTERED]'
          else
            filter(value, type)
          end
        end
        filtered
      end

      def filter_array(values, type)
        values.map { |value| filter(value, type) }
      end

    end
  end
end
