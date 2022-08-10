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
        # TODO: @error can contain template, reference, or function?
        RuntimeError.new(@error) if matched
      end
    end
  end
end
