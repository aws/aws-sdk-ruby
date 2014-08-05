require 'multi_json'

module Aws
  module Api

    # Generates smaller API models by removing documentation traits.
    # @api private
    class Minifier

      def initialize(json)
        @json = json
      end

      def minify(value = @json)
        case value
        when Hash
          value.inject({}) do |h, (k, v)|
            unless k == 'documentation'
              h[k] = minify(v)
            end
            h
          end
        when Array
          value.map { |v| minify(v) }
        else
          value
        end
      end

    end
  end
end
