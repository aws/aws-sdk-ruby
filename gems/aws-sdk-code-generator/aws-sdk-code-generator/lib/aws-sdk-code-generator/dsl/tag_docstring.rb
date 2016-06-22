module AwsSdkCodeGenerator
  module Dsl
    # @api private
    class TagDocstring

      def initialize(docstring)
        @lines = docstring.to_s.strip.lines.inject([]) do |lines, line|
          line = line.rstrip
          if line.empty?
            lines << "#"
          else
            lines << "#   #{line.rstrip}"
          end
        end
      end

      # @return Array<String>
      attr_reader :lines

      # @return [Boolean]
      def empty?
        @lines.empty?
      end

    end
  end
end
