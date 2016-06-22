require 'set'

module AwsSdkCodeGenerator
  module Generators
    class TypesModule < Dsl::Module

      include Helper

      def initialize(api:)
        @api = api
        super('Types')
        input_shapes = compute_input_shapes(api)
        structures.each do |shape_name, shape|
          add(StructureTypeClass.new(
            name: shape_name,
            api: api,
            used_as_input: input_shapes.include?(shape_name)
          ))
        end
      end

      private

      def compute_input_shapes(api)
        inputs = Set.new
        (api['operations'] || {}).each do |_, operation|
          visit_inputs(operation['input'], inputs) if operation['input']
        end
        inputs
      end

      def visit_inputs(shape_ref, inputs)
        return if inputs.include?(shape_ref['shape']) # recursion
        inputs << shape_ref['shape']
        s = shape(shape_ref)
        case s['type']
        when 'structure'
          s['members'].each_pair do |_, member_ref|
            visit_inputs(member_ref, inputs)
          end
        when 'list'
          visit_inputs(s['member'], inputs)
        when 'map'
          visit_inputs(s['key'], inputs)
          visit_inputs(s['value'], inputs)
        end
      end

    end
  end
end
