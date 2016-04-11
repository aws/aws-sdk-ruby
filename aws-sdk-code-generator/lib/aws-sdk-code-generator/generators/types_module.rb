module AwsSdkCodeGenerator
  module Generators
    class TypesModule < Dsl::Module

      include Helper

      def initialize(api:)
        @api = api
        super('Types')
        structures.each do |shape_name, shape|
          add(StructureTypeClass.new(name: shape_name, api:api))
        end
      end

    end
  end
end
