module AwsSdkCodeGenerator
  module Dsl
    class Main

      include Dsl::CodeObject

      def initialize(root:nil, &block)
        @comments = Docstring.new(nil)
        @require_statements = []
        @code_objects = []
        @root = self
        yield(self) if block
      end

      def add(*code_objects)
        code_objects.each do |code_obj|
          @code_objects << code_obj unless code_obj.nil?
        end
      end

      def code(code = nil, &block)
        @code_objects << CodeLiteral.new(code, &block)
      end

      def comments(docstring)
        @comments = Docstring.new(docstring)
      end

      def include_module(module_name)
        add(IncludeStatement.new(module_name))
      end
      alias :include :include_module

      def extend_module(module_name)
        add(ExtendStatement.new(module_name))
      end
      alias :extend :extend_module

      def require(path)
        @require_statements << "require '#{path}'"
      end

      def require_relative(path)
        @require_statements << "require_relative '#{path}'"
      end

      def method(name, **options, &block)
        m = Dsl::Method.new(name, **options)
        yield(m) if block
        add(m)
      end

      def module(name, &block)
        m = Dsl::Module.new(name, root: @root)
        yield(m) if block
        add(m)
        m
      end

      def class(name, **options, &block)
        c = Dsl::Class.new(name, root: @root, **options)
        yield(c) if block
        add(c)
        c
      end

      def lines

        lines = []

        lines.concat(@comments.lines)
        lines << :newline unless @comments.empty?

        @require_statements.each do |statement|
          lines << statement
        end
        lines << :newline unless @require_statements.empty?

        @code_objects.each.with_index do |code_obj, n|
          lines.concat(code_obj.lines)
          lines << :newline unless n == @code_objects.size - 1
        end
        lines
      end

    end
  end
end
