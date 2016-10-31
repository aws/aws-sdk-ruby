module AwsSdkCodeGenerator
  module Generators
    class StructureTypeClass < Dsl::CodeLiteral

      include Helper

      # @option options [required, String] :name
      # @option options [required, Hash] :api
      # @option options [required, Boolean] :used_as_input
      def initialize(options)
        @name = options.fetch(:name)
        @api = options.fetch(:api)
        @shape = @api['shapes'][@name]
        super()

        apply_class_docs
        apply_input_example if options.fetch(:used_as_input)
        apply_returned_by
        document_members
        if @shape['members'].empty?
          apply_empty_structure
        else
          apply_structure_with_members
        end
      end

      private

      def apply_class_docs
        if class_docs = documentation(@shape)
          append(Dsl::Docstring.new(class_docs).to_s)
        end
      end

      def apply_input_example
        if @shape['members'].empty?
          note = '@api private'
        else
          note = "@note When making an API call, pass #{@name}\n"
          note += "  data as a hash:\n\n"
          note += SyntaxExample.new(
            struct_shape: @shape,
            api: @api,
            indent: ' ' * 6
          ).format
        end
        append(Dsl::Docstring.new(note).to_s)
      end

      def apply_returned_by
        # TODO : implement this
      end

      def apply_empty_structure
        append("class #{@name} < Aws::EmptyStructure; end")
      end

      def apply_structure_with_members
        append("class #{@name} < Struct.new(")
        @shape['members'].keys.each.with_index do |member_name, n|
          comma = n == @shape['members'].size - 1 ? ')' : ','
          append("  :#{underscore(member_name)}#{comma}")
        end
        append("  include Aws::Structure")
        append("end")
      end

      def document_members
        @shape['members'].each.with_index do |(name, ref), n|
          append("#") unless n == 0
          append(Dsl::Docstring.new(attribute_macro(name, ref)).to_s)
        end
      end

      def attribute_macro(member_name, member_ref)
        docs = documentation(member_ref, line_width:68).lines.to_a.join("  ")
        macro = "@!attribute [rw] #{underscore(member_name)}\n"
        macro << "  #{docs}\n" unless docs == ''
        macro << "  @return [#{ruby_type(member_ref)}]"
        macro
      end

      private

      def needs_defaults?
        @shape['members'].any? do |_, member_ref|
          type = shape(member_ref)['type']

          type == 'list' || type == 'map'
        end
      end

    end
  end
end
