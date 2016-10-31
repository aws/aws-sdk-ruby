module AwsSdkCodeGenerator
  module Dsl
    class OptionTag

      # @option options [required, String] :name
      # @option options [required, String] :type
      # @option options [String] :param ('options')
      # @option options [Boolean] :required (false)
      # @option options [String, nil] :docstring (nil)
      # @option options [Object] :default
      def initialize(options)
        @name = options.fetch(:name)
        @type = options.fetch(:type)
        @param = options.fetch(:param, 'options')
        @required = options.fetch(:required, false) ? 'required, ' : ''
        @docstring = Dsl::TagDocstring.new(options.fetch(:docstring, nil))
        @default = Dsl::TagDefault.new(options.fetch(:default, nil))
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
