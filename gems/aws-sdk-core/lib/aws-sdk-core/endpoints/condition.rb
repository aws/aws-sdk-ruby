# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Condition
      def initialize(fn:, argv:, assign: nil)
        @fn = fn
        @argv = build_argv(argv)
        @assign = assign
      end

      attr_reader :fn
      attr_reader :argv
      attr_reader :assign

      private

      def build_argv(argv_json)
        argv = []
        argv_json.each do |arg|
          arg << if arg.is_a?(Hash) && arg['ref']
                   Reference.new(ref: arg['ref'])
                 elsif arg.is_a?(Hash) && arg['fn']
                   Function.new(fn: arg['fn'], argv: arg['argv'])
                 else
                   arg
                 end
        end
        argv
      end
    end
  end
end
