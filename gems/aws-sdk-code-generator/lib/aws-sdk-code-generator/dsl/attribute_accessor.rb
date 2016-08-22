module AwsSdkCodeGenerator
  module Dsl
    class AttributeAccessor

      include Dsl::CodeObject

      def initialize(name, api_private: false, &block)
        @name = name
        @tags = []
        yield(self) if block
        api_private! if api_private
      end

      attr_reader :name

      def returns(type, docstring:nil)
        @tags << ReturnTag.new(type:type, docstring:docstring)
      end

      def api_private!
        @tags << "# @api private"
      end

      def documented?
        !@tags.empty?
      end

      def lines
        lines = []
        @tags.each do |tag|
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
