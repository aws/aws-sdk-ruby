module AwsSdkCodeGenerator
  module Dsl
    class CodeLiteral

      include Dsl::CodeObject

      # @param [String] code
      def initialize(code = nil, nesting:0, &block)
        @code_objects = []
        @nesting = nesting
        append(code) if code
        yield(self) if block
      end

      attr_accessor :nesting

      # @param [String, CodeLiteral]
      def <<(code)
        if CodeLiteral === code || String === code
          @code_objects << [@nesting, code]
        else
          msg = "expected String or CodeLiteral, got #{code.class}"
          raise ArgumentError, msg
        end
      end
      alias :append :<<

      def newline
        @code_objects << [@nesting, :newline]
      end

      def indent(code = nil, &block)
        @nesting += 1
        code = CodeLiteral.new(code) unless CodeLiteral === code
        append(code)
        yield(code) if block
        @nesting -= 1
        code
      end

      def lines(pad = '')
        lines = []
        @code_objects.each do |i, code_obj|
          case code_obj
          when :newline
            lines << :newline
          when String
            code_obj.lines.each do |line|
              line = line.rstrip
              if line == ''
                lines << :newline
              else
                lines << "#{pad}#{'  ' * i}#{line}"
              end
            end
          when CodeLiteral
            lines.concat(code_obj.lines(pad + ('  ' * i)))
          end
        end
        lines
      end

    end
  end
end
