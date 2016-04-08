module AwsSdkCodeGenerator
  module Generators
    class TypesModule < Dsl::Module

      include Helper

      def initialize(api:)
        @api = api
        super('Types')
        structures.each do |shape_name, shape|
          self.class(shape_name, extends: 'Aws::StructureType') do |c|

            init = Dsl::Method.new(:initialize)
            c.add(init) if needs_defaults?(shape)

            shape['members'].each do |member_name, ref|
              attr_name = underscore(member_name)

              # add constructor defaults
              case member_shape(shape_name, member_name)['type']
              when 'list' then init.code("@#{attr_name} = Aws::DefaultList.new")
              when 'map' then init.code("@#{attr_name} = Aws::DefaultMap.new")
              end

              # add attribute accessors
              c.attr_accessor(underscore(member_name)) do |attr|
                attr.returns(ruby_type(ref), docstring:documentation(ref))
              end

            end

            c.eigenclass do |eigen|

              eigen.method('shape') do |m|
                m.docstring('@api private')
                m.code("ClientApi::#{shape_name}")
              end

              eigen.method('build') do |m|
                m.param('hash', default:{})
                m.returns(shape_name)
                m.code("Hash2Struct.to_struct(self, hash)")
              end

            end

          end
        end
      end

      private

      def needs_defaults?(struct_shape)
        struct_shape['members'].any? do |_, member_ref|
          type = shape(member_ref)['type']
          type == 'list' || type == 'map'
        end
      end

    end
  end
end
