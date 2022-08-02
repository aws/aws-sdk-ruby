# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Condition
      def initialize(fn:, argv:, assign: nil)
        @fn = Function.new(fn: fn, argv: argv)
        # @fn = fn
        # @argv = build_argv(argv)
        @assign = assign
        @assigned = {}
      end

      attr_reader :fn
      attr_reader :argv
      attr_reader :assign

      attr_reader :assigned

      def match?(parameters, assigns)
        output = @fn.call(parameters, assigns)
        @assigned.merge({ @assign.to_sym => output }) if @assign
        output
      end

      # private
      #
      # def build_argv(argv_json)
      #   argv = []
      #   argv_json.each do |arg|
      #     argv << if arg.is_a?(Hash) && arg['ref']
      #               Reference.new(ref: arg['ref'])
      #             elsif arg.is_a?(Hash) && arg['fn']
      #               Function.new(fn: arg['fn'], argv: arg['argv'])
      #             else
      #               arg
      #             end
      #   end
      #   argv
      # end
    end
  end
end
