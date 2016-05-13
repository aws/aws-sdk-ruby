module AwsSdkCodeGenerator
  module Generators
    class StructureTypeClass < Dsl::Class

      include Helper

      def initialize(name:, api:)
        @api = api
        @shape = api['shapes'][name]

        member_names = @shape['members'].keys.map { |name| ":#{underscore(name)}" }

        if member_names.size > 1
          member_names = "\n  #{member_names.join(",\n  ")}\n"
        else
          member_names = "#{member_names[0]}"
        end

        super(name, extends: "Struct.new(#{member_names}).send(:include, Aws::Structure)")

        docstring(documentation(@shape).to_s)
        @shape['members'].each do |member_name, member_ref|
          docstring(attribute_macro(member_name, member_ref))
          docstring("\n")
        end
      end

      private

      def attribute_macro(member_name, member_ref)
        <<-MACRO

@!attribute [rw] #{underscore(member_name)}
  #{documentation(member_ref).lines.to_a.join("  ")}
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
