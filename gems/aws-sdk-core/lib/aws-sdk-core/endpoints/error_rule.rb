# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class ErrorRule
      def initialize(type: 'error', conditions:, error: nil, documentation: nil)
        @type = type
        @conditions = build_conditions(conditions)
        @error = error
        @documentation = documentation
      end

      attr_reader :type
      attr_reader :conditions
      attr_reader :error
      attr_reader :documentation

      def match?(parameters, assigned = {})
        assigns = assigned.dup
        conditions.all? do |condition|
          condition.match?(parameters, assigns)
          assigns = assigns.merge(condition.assigned) if condition.assign
        end
      end

      private

      def build_conditions(conditions_json)
        conditions = []
        conditions_json.each do |condition|
          conditions << Condition.new(
            fn: condition['fn'],
            argv: condition['argv'],
            assign: condition['assign']
          )
        end
        conditions
      end
    end
  end
end
