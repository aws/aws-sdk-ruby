module AwsSdkCodeGenerator
  module Generators
    class StructureTypeClass < Dsl::CodeLiteral

      include Helper

      def initialize(name:, api:)
        @name = name
        @api = api
        @shape = api['shapes'][name]
        super()

        apply_class_docs
        apply_input_example
        apply_returned_by

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
        note = "@note When making an API call, pass #{@name}\n"
        note += "  data as a hash:\n\n"
        note += SyntaxExample.new(
          struct_shape: @shape,
          api: @api,
          indent: ' ' * 6
        ).format
        append(Dsl::Docstring.new(note).to_s)
      end

      def apply_returned_by
        # TODO : implement this
      end

      def apply_empty_structure
        append("class #{@name} < EmptyStructure; end")
      end

      def apply_structure_with_members
        append("class #{@name} < Struct.new(")
        @shape['members'].keys.each.with_index do |member_name, n|
          comma = n == @shape['members'].size - 1 ? ')' : ','
          append("  :#{underscore(member_name)}#{comma}")
        end
        append("\n")
        document_members
        append("end")
      end

      def document_members
        @shape['members'].each do |member_name, member_ref|
          indent(Dsl::Docstring.new(attribute_macro(member_name, member_ref)).to_s)
          append("\n")
        end
      end

      def attribute_macro(member_name, member_ref)
        <<-MACRO
@!attribute [rw] #{underscore(member_name)}
  #{documentation(member_ref, line_width:68).lines.to_a.join("  ")}
  @return [#{ruby_type(member_ref)}]
        MACRO
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
