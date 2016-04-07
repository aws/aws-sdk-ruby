module AwsSdkCodeGenerator
  module Dsl
    class Module < Dsl::Main

      include Dsl::CodeObject

      def initialize(name, root:nil, &block)
        @name = name
        @code_objects = []
        @access = :public
        @root = root
        @docstring = Dsl::Docstring.new(nil)
        yield(self) if block
      end

      attr_reader :name

      def add(*code_objects)
        code_objects.each do |code_object|
          if Dsl::Method === code_object && code_object.access != @access
            add(AccessControlStatement.new(code_object.access))
          elsif Dsl::AccessControlStatement === code_object
            @access = code_object.access
          end
          super(code_object)
        end
      end

      def require(path)
        @root.require(path)
      end

      def docstring(docstring)
        @docstring = Dsl::Docstring.new(docstring)
      end

      def require_relative(path)
        @root.require_relative(path)
      end

      def constructor(**options, &block)
        method(:initialize, **options, &block)
      end

      def attr_accessor(name, &block)
        a = Dsl::AttributeAccessor.new(name)
        yield(a) if block
        add(a)
      end

      def autoload(const_name, path)
        @code_objects << AutoloadStatement.new(const_name, path)
      end

      def attr_reader(name, &block)
        a = Dsl::AttributeReader.new(name)
        yield(a) if block
        add(a)
      end

      def attr_writer(name, &block)
        a = Dsl::AttributeWriter.new(name)
        yield(a) if block
        add(a)
      end

      def eigenclass(&block)
        m = Dsl::Eigenclass.new
        yield(m) if block
        add(m)
      end

      def lines
        code = []
        code.concat(@docstring.lines)
        code << open_module
        code << :newline if padded?(0)

        @code_objects.each.with_index do |code_object, n|
          code << code_object.lines
          code << :newline if separator?(n)
        end

        code << close_module
        code
      end

      private

      def open_module
        "module #{@name}"
      end

      def close_module
        "end"
      end

      def padded?(n)
        !@code_objects[n].kind_of?(Dsl::Module) &&
        !(
          @code_objects.all? { |obj| autoload_statement?(obj) } ||
          @code_objects.all? { |obj| mixin?(obj) } ||
          @code_objects.all? { |obj| undocumented_attr_macro?(obj) }
        )
      end

      def separator?(n)
        if last?(n)
          padded?(@code_objects.size - 1)
        elsif grouped_statements?(n)
          false
        else
          true
        end
      end

      def last?(n)
        @code_objects.size == n + 1
      end

      def grouped_statements?(n)
        two_autoloads?(n) ||
        two_mixins?(n) ||
        two_undocumented_attr_macros?(n)
      end

      def two_autoloads?(n)
        @code_objects[n + 1] &&
        autoload_statement?(@code_objects[n + 1]) &&
        autoload_statement?(@code_objects[n])
      end

      def two_mixins?(n)
        @code_objects[n + 1] &&
        mixin?(@code_objects[n + 1]) &&
        mixin?(@code_objects[n])
      end

      def two_undocumented_attr_macros?(n)
        @code_objects[n + 1] &&
        undocumented_attr_macro?(@code_objects[n + 1]) &&
        undocumented_attr_macro?(@code_objects[n])
      end

      def autoload_statement?(code_object)
        Dsl::AutoloadStatement === code_object
      end

      def mixin?(code_object)
        Dsl::IncludeStatement === code_object
      end

      def undocumented_attr_macro?(code_object)
        Dsl::AttributeAccessor === code_object && !code_object.documented?
      end

    end
  end
end
