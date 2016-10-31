module AwsSdkCodeGenerator
  module Dsl
    class AttributeAccessor

      include Dsl::CodeObject

      # @option options [Boolean] :api_private (false)
      def initialize(name, options = {}, &block)
        @name = name
        @tags = []
        yield(self) if block
        api_private! if options.fetch(:api_private, false)
      end

      attr_reader :name

      def returns(type, options = {})
        @tags << ReturnTag.new(options.merge(type:type))
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
          lines.concat(tag.lines.to_a)
        end
        lines + ["#{macro} :#{@name}"]
      end

      def macro
        "attr_accessor"
      end

    end
  end
end
