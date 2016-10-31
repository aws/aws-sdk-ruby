module AwsSdkCodeGenerator
  module Dsl
    class Param

      # @option options [String] :type
      # @option options [Object] :default
      # @option options [String] :docstring
      # @option options [Boolean] :documented (true)
      def initialize(name, options = {})
        @name = name.to_s
        @type = TagType.new(options.fetch(:type, nil))
        @default = TagDefault.new(options.fetch(:default, nil))
        @docstring = TagDocstring.new(options.fetch(:docstring, nil))
        @documented = options.fetch(:documented, true)
      end

      attr_reader :name, :default

      def documented?
        !!@documented
      end

      def tag
        if [@type, @default, @docstring].all?(&:empty?)
          []
        else
          [first_line] + @docstring.lines
        end
      end

      private

      def first_line
        "# @param#{@type} #{@name}#{yard_default}"
      end

      def yard_default
        @default.empty? ? '' : " (#{@default})"
      end

    end
  end
end
