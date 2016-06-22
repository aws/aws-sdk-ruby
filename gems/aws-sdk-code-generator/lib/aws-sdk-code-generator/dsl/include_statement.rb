module AwsSdkCodeGenerator
  module Dsl
    class IncludeStatement

      include Dsl::CodeObject

      def initialize(module_name)
        @module_name = module_name
      end

      def lines
        ["include #{@module_name}"]
      end

    end
  end
end
