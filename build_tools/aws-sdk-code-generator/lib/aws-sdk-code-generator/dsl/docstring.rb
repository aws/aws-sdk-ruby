module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class Docstring

      include Dsl::CodeObject

      # @param [String, nil]
      def initialize(docstring = nil, &block)
        @lines = []
        append(docstring)
        yield(self) if block
      end

      def append(docstring)
        @lines.concat(docstring.to_s.rstrip.lines.map do |line|
          if line == "\n"
            "#"
          else
            "# #{line.rstrip}"
          end
        end)
      end
      alias :<< :append

      # @return [Array<String>]
      attr_reader :lines

      # @return [Boolean]
      def empty?
        @lines.empty?
      end

    end
  end
end
