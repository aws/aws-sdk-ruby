# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Rule
      # Resolves a value that is a function, reference, or template string.
      def resolve_value(value, parameters, assigns)
        if value.is_a?(Hash) && value['fn']
          Function.new(**value).call(parameters, assigns)
        elsif value.is_a?(Hash) && value['ref']
          Reference.new(**value).resolve(parameters, assigns)
        else
          Templater.resolve(value, parameters, assigns)
        end
      end
    end
  end
end
