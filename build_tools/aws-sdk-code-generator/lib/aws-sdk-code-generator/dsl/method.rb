module AwsSdkCodeGenerator
  module Dsl
    class Method

      include Dsl::CodeObject

      def initialize(name, access: :public, docstring:nil, &block)
        @name = name.to_s
        @access = access
        @code_objects = []
        @params = []
        @option_tags = []
        @return_tags = []
        @aliases = []
        @docstring = Dsl::Docstring.new(docstring)
        yield(self) if block
      end

      attr_reader :name

      attr_reader :access

      attr_reader :aliases

      def param(name, **options)
        @params << Param.new(name, **options)
      end

      def option(**options)
        @option_tags << OptionTag.new(**options)
      end

      def returns(type, docstring:nil)
        @return_tags << ReturnTag.new(type:type, docstring:docstring)
      end

      def add(*code_objects)
        @code_objects.concat(code_objects)
      end

      def code(code = nil, &block)
        @code_objects << CodeLiteral.new(code, &block)
      end

      def empty?
        @code_objects.empty?
      end

      def docstring(docstring = nil, &block)
        @docstring.append(docstring)
        yield(@docstring) if block
        @docstring
      end

      def block_param
        @params << BlockParam.new
      end

      def alias_as(other_name)
        @aliases << other_name.to_s
      end

      def lines
        code = []
        code.concat(yard_docs)
        code << method_signature
        code << method_body
        code << method_end
        code.concat(@aliases.map { |a| "alias :#{a} :#{@name}" })
        code
      end

      private

      def yard_docs
        docs = []
        docs.concat(@docstring.lines)
        docs.concat(ParamList.new(@params).tags)
        [@option_tags, @return_tags].each do |tags|
          tags.each do |tag|
            docs.concat(tag.lines)
          end
        end
        docs.compact
      end

      def method_signature
        "def #{@name}#{ParamList.new(@params).signature}"
      end

      def method_body
        @code_objects.inject([]) do |lines, code_obj|
          lines.concat(code_obj.lines)
        end
      end

      def method_end
        "end"
      end

    end
  end
end
