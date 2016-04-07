module AwsSdkCodeGenerator
  module Dsl
    class AutoloadStatement

      include Dsl::CodeObject

      def initialize(const_name, path)
        @lines = ["autoload :#{const_name}, '#{path}'"]
      end

      attr_reader :lines

    end
  end
end
