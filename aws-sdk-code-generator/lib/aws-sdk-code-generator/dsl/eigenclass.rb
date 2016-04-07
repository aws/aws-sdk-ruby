module AwsSdkCodeGenerator
  module Dsl
    class Eigenclass < Dsl::Module

      def initialize(&block)
        super('self', &block)
      end

      def open_module
        "class << self"
      end

    end
  end
end
