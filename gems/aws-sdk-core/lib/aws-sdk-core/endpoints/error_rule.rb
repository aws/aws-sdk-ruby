# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class ErrorRule
      def initialize(type: 'error', conditions:, error: nil, documentation: nil)
        @type = type
        @conditions = Condition.from_json(conditions)
        @error = error
        @documentation = documentation
      end

      attr_reader :type
      attr_reader :conditions
      attr_reader :error
      attr_reader :documentation

      def match(parameters, assigned = {})
        assigns = assigned.dup
        matched = conditions.all? do |condition|
          output = condition.match?(parameters, assigns)
          assigns = assigns.merge(condition.assigned) if condition.assign
          output
        end
        resolved_error(parameters, assigns) if matched
      end

      private

      def resolved_error(parameters, assigns)
        error = if @error.is_a?(Hash) && @error['fn']
                  Function.new(fn: @error['fn'], argv: @error['argv'])
                          .call(parameters, assigns)
                elsif @error.is_a?(Hash) && @error['ref']
                  Reference.new(ref: @error['ref']).resolve(parameters, assigns)
                else
                  Templater.resolve(@error, parameters, assigns)
                end
        ArgumentError.new(error)
      end
    end
  end
end
