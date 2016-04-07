require 'set'

module AwsSdkCodeGenerator
  module Dsl
    # @api private
    module CodeObject

      def to_s
        format(lines)
      end

      private

      def underscore(str)
        Underscore.underscore(str)
      end

      def format(lines, nesting: 0)
        i = '  ' * nesting
        lines.inject([]) do |code, obj|
          case obj
          when :newline   then code << "\n"
          when String     then code << "#{i}#{obj}\n"
          when CodeObject then code.concat(obj.lines)
          when Array      then code << format(obj, nesting: nesting + 1)
          else
            raise ArgumentError, "got #{obj.class}"
          end
        end.join
      end

    end
  end
end
