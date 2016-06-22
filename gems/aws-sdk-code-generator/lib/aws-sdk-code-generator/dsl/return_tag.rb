module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class ReturnTag

      def initialize(type:, docstring:nil)
        @type = Dsl::TagType.new(type)
        @docstring = Dsl::TagDocstring.new(docstring)
      end

      def lines
        ["# @return#{@type}"] + @docstring.lines
      end

    end
  end
end
