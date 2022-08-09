# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Condition
      def initialize(fn:, argv:, assign: nil)
        @fn = Function.new(fn: fn, argv: argv)
        @assign = assign
        @assigned = {}
      end

      attr_reader :fn
      attr_reader :argv
      attr_reader :assign

      attr_reader :assigned

      def match?(parameters, assigns)
        output = @fn.call(parameters, assigns)
        @assigned = @assigned.merge({ @assign => output }) if @assign
        output
      end
    end
  end
end
