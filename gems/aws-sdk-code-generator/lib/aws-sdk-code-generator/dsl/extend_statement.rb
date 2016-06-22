module AwsSdkCodeGenerator
  module Dsl

    class ExtendStatement < IncludeStatement

      def lines
        ["extend #{@module_name}"]
      end

    end
  end
end
