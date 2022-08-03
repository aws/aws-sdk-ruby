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
        puts "calling #{@fn} with #{parameters} and #{assigns}"
        output = @fn.call(parameters, assigns)
        puts "output is #{output}"
        @assigned.merge({ @assign.to_sym => output }) if @assign
        output
      end
    end
  end
end
