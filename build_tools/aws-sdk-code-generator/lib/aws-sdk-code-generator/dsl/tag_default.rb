module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class TagDefault

      def initialize(default)
        @default = default
      end

      def to_s
        @default.inspect
      end

      def empty?
        @default.nil?
      end

    end
  end
end
