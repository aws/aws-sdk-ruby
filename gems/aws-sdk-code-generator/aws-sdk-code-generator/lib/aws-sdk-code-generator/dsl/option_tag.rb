module AwsSdkCodeGenerator
  module Dsl
    class OptionTag

      def initialize(name:, type:, param:'options', required:false, docstring:nil, default:nil)
        @name = name
        @type = type
        @param = param
        @required = required ? 'required, ' : ''
        @docstring = Dsl::TagDocstring.new(docstring)
        @default = Dsl::TagDefault.new(default)
      end

      def lines
        [first_line] + @docstring.lines
      end

      private

      def first_line
        "# @option #{@param} [#{@required}#{@type}] :#{@name}#{yard_default}"
      end

      def yard_default
        @default.empty? ? '' : " (#{@default})"
      end

    end
  end
end
