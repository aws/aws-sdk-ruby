module AwsSdkCodeGenerator
  module Dsl
    class Formatter

      def initialize
        @indent = '  '
      end

      def format(lines, nesting:0)
        i = @indent * nesting
        lines.inject([]) do |code, section|
          case section
          when "\n"       then code << "\n" # do not indent blank lines
          when CodeObject then code.concat(section.lines)
          when String     then code << "#{i}#{section}"
          when Array      then code << format(section, nesting:nesting + 1)
          else
            raise ArgumentError, "got #{section.class}"
          end
        end.join
      end

    end
  end
end
