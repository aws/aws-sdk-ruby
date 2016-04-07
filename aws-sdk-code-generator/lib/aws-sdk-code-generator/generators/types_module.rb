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

            c.add(init) unless init.empty?
            c.method('self.shape') do |method|
              method.docstring('@api private')
              method.code("ClientApi::#{shape_name}")
            end

          end
        end
      end

    end
  end
end
