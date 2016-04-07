module AwsSdkCodeGenerator
  module Dsl
    class AttributeAccessor

      include Dsl::CodeObject

      def initialize(name, &block)
        @name = name
        @return_tags = []
        yield(self) if block
      end

      attr_reader :name

      def returns(type, docstring:nil)
        @return_tags << ReturnTag.new(type:type, docstring:docstring)
      end

      def documented?
        !@return_tags.empty?
      end

      def lines
        lines = []
        @return_tags.each do |tag|
          lines.concat(tag.lines)
        end
        lines + ["#{macro} :#{@name}"]
      end

      def macro
        "attr_accessor"
      end

    end
  end
end
