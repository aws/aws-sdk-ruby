module AwsSdkCodeGenerator
  module Dsl
    class Main

      include Dsl::CodeObject

      # @option options [Main, Module] :parent (nil)
      def initialize(options = {}, &block)
        @comments = Docstring.new(nil)
        @top_content = []
        @code_objects = []
        @parent = options.fetch(:parent, nil)
        yield(self) if block
      end

      # @return [nil, CodeObject]
      attr_accessor :parent

      # @return [nil, CodeObject]
      def root
        root = self
        root = root.parent while root && root.parent
        root
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
        @top_content << "require '#{path}'"
      end

      # Allows inserting top-of document content.
      def top(string)
        root.instance_variable_get("@top_content") << string
      end

      def require_relative(path)
        @top_content << "require_relative '#{path}'"
      end

      def method(name, options = {}, &block)
        m = Dsl::Method.new(name, options)
        yield(m) if block
        add(m)
      end

      def module(name, &block)
        m = Dsl::Module.new(name, parent: self)
        yield(m) if block
        add(m)
        m
      end

      def class(name, options = {}, &block)
        c = Dsl::Class.new(name, options.merge(parent: self))
        yield(c) if block
        add(c)
        c
      end

      def lines

        lines = []

        lines.concat(@comments.lines)
        lines << :newline unless @comments.empty?

        @top_content.each do |statement|
          lines << statement
        end
        lines << :newline unless @top_content.empty?

        @code_objects.each.with_index do |code_obj, n|
          lines.concat(code_obj.lines)
          lines << :newline unless n == @code_objects.size - 1
        end
        lines
      end

    end
  end
end
