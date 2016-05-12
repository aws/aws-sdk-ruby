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

        super(name, extends: "Aws::Structure.new(#{member_names})")

        docstring(documentation(@shape))
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

#        init = Dsl::Method.new(:initialize)
#        add(init) if needs_defaults?
#
#        @shape['members'].each do |member_name, ref|
#          attr_name = underscore(member_name)
#
#          # add constructor defaults
#          case member_shape(name, member_name)['type']
#          when 'list' then init.code("@#{attr_name} = Aws::DefaultList.new")
#          when 'map' then init.code("@#{attr_name} = Aws::DefaultMap.new")
#          end
#
#          # add attribute accessors
#          attr_accessor(underscore(member_name)) do |attr|
#            attr.returns(ruby_type(ref), docstring:documentation(ref))
#          end
#
#        end
#
#        eigenclass do |eigen|
#
#          eigen.method('shape') do |m|
#            m.docstring('@api private')
#            m.code("ClientApi::#{name}")
#          end
#
#          eigen.method('build') do |m|
#            m.param('hash', default:{})
#            m.returns(name)
#            m.code("Hash2Struct.to_struct(self, hash)")
#          end
#
#        end
#      end

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
