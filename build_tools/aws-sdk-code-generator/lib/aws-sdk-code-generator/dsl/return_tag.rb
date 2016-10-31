module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class ReturnTag

      # @option options [required, String] :type
      # @option options [String] :docstring
      def initialize(options)
        @type = Dsl::TagType.new(options.fetch(:type))
        @docstring = Dsl::TagDocstring.new(options.fetch(:docstring, nil))
      end

      def lines
        ["# @return#{@type}"] + @docstring.lines
      end

    end
  end
end
