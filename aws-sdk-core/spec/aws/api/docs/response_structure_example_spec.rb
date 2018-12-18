require 'spec_helper'

module Aws
  module Api
    module Docs

      include Seahorse::Model
      include Seahorse::Model::Shapes

      describe ResponseStructureExample do

        let(:operation) { Operation.new }

        let(:example) {
          ResponseStructureExample.new('operation_name', operation).to_str
        }

        it 'returns nil for operations without output' do
          expect(example).to be(nil)
        end

        it 'returns nil for operation with empty output structures' do
          operation.output = ShapeRef.new(shape: StructureShape.new)
          expect(example).to be(nil)
        end

        it 'supports operations that accept hashes of scalars' do
          struct = StructureShape.new
          struct.add_member(:param_name, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:other_param, ShapeRef.new(shape: StringShape.new))
          operation.output = ShapeRef.new(shape: struct)
          expect(example).to match_example(<<-EXAMPLE)
resp.param_name #=> String
resp.other_param #=> String
          EXAMPLE
        end

        it 'comments on accepted values for enums' do
          string = StringShape.new
          string.name = 'TableName'
          string.enum = %w(abc mno xyz)
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: string))
          operation.output = ShapeRef.new(shape: struct)
          expect(example).to match_example(<<-EXAMPLE)
resp.value #=> String, one of "abc", "mno", "xyz"
          EXAMPLE
        end

        it 'supports nested structures' do
          nested = StructureShape.new
          nested.add_member(:value, ShapeRef.new(shape: StringShape.new))
          output = StructureShape.new
          output.add_member(:nested, ShapeRef.new(shape: nested))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.nested.value #=> String
          EXAMPLE
        end

        it 'supports recursive structures' do
          struct = StructureShape.new
          struct.name = 'RecursiveData'
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:nested, ShapeRef.new(shape: struct))
          operation.output = ShapeRef.new(shape: struct)
          expect(example).to match_example(<<-EXAMPLE)
resp.value #=> String
resp.nested #=> Types::RecursiveData
          EXAMPLE
        end

        it 'supports lists of scalars' do
          list = ListShape.new
          list.member = ShapeRef.new(shape: StringShape.new)
          output = StructureShape.new
          output.add_member(:items, ShapeRef.new(shape: list))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.items #=> Array
resp.items[0] #=> String
          EXAMPLE
        end

        it 'supports lists of structures' do
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:count, ShapeRef.new(shape: IntegerShape.new))
          list = ListShape.new
          list.member = ShapeRef.new(shape: struct)
          output = StructureShape.new
          output.add_member(:items, ShapeRef.new(shape: list, required: true))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.items #=> Array
resp.items[0].value #=> String
resp.items[0].count #=> Integer
          EXAMPLE
        end

        it 'supports lists of scalar maps' do
          map = MapShape.new
          map.key = ShapeRef.new(shape:StringShape.new.tap{|s|s.name="TableName"})
          map.value = ShapeRef.new(shape:StringShape.new)
          list = ListShape.new
          list.member = ShapeRef.new(shape: map)
          output = StructureShape.new
          output.add_member(:items, ShapeRef.new(shape: list, required: true))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.items #=> Array
resp.items[0] #=> Hash
resp.items[0]["TableName"] #=> String
          EXAMPLE
        end

        it 'supports lists of complex maps' do
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:count, ShapeRef.new(shape: IntegerShape.new))
          map = MapShape.new
          map.key = ShapeRef.new(shape:StringShape.new.tap{|s|s.name="TableName"})
          map.value = ShapeRef.new(shape:struct)
          list = ListShape.new
          list.member = ShapeRef.new(shape: map)
          output = StructureShape.new
          output.add_member(:items, ShapeRef.new(shape: list, required: true))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.items #=> Array
resp.items[0] #=> Hash
resp.items[0]["TableName"].value #=> String
resp.items[0]["TableName"].count #=> Integer
          EXAMPLE
        end

        it 'supports maps of scalars' do
          key = StringShape.new
          key.name = 'KeyName'
          value = StringShape.new
          value.name = 'ValueName'
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          output = StructureShape.new
          output.add_member(:attributes, ShapeRef.new(shape: map))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.attributes #=> Hash
resp.attributes["KeyName"] #=> String
          EXAMPLE
        end

        it 'supports maps of structures' do
          key = StringShape.new
          key.name = 'KeyName'
          value = StructureShape.new
          value.add_member(:name, ShapeRef.new(shape:StringShape.new))
          value.add_member(:value, ShapeRef.new(shape:StringShape.new))
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          output = StructureShape.new
          output.add_member(:attributes, ShapeRef.new(shape: map))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.attributes #=> Hash
resp.attributes["KeyName"].name #=> String
resp.attributes["KeyName"].value #=> String
          EXAMPLE
        end

        it 'supports maps of lists' do
          key = StringShape.new
          key.name = 'KeyName'
          value = ListShape.new
          value.member = ShapeRef.new(shape:StringShape.new)
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          output = StructureShape.new
          output.add_member(:attributes, ShapeRef.new(shape: map))
          operation.output = ShapeRef.new(shape: output)
          expect(example).to match_example(<<-EXAMPLE)
resp.attributes #=> Hash
resp.attributes["KeyName"] #=> Array
resp.attributes["KeyName"][0] #=> String
          EXAMPLE
        end

        it 'supports complex structures' do
          shapes = ShapeMap.new(ApiHelper.sample_shapes)
          operation.output = shapes.shape_ref('shape' => 'StructureShape')
          expect(example).to match_example(<<-EXAMPLE)
resp.nested #=> Types::StructureShape
resp.nested_list #=> Array
resp.nested_list[0] #=> Types::StructureShape
resp.nested_map #=> Hash
resp.nested_map["StringShape"] #=> Types::StructureShape
resp.number_list #=> Array
resp.number_list[0] #=> Integer
resp.string_map #=> Hash
resp.string_map["StringShape"] #=> String
resp.blob #=> IO
resp.byte #=> String
resp.boolean #=> true/false
resp.character #=> String
resp.double #=> Float
resp.float #=> Float
resp.integer #=> Integer
resp.long #=> Integer
resp.string #=> String
resp.timestamp #=> Time
          EXAMPLE
        end

        it 'documents the simplified dynamodb attribute values' do
          operation.output = DynamoDB::Client.api.operation(:get_item).output
          expect(example).to match_example(<<-EXAMPLE)
resp.item #=> Hash
resp.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
resp.consumed_capacity.table_name #=> String
resp.consumed_capacity.capacity_units #=> Float
resp.consumed_capacity.read_capacity_units #=> Float
resp.consumed_capacity.write_capacity_units #=> Float
resp.consumed_capacity.table.read_capacity_units #=> Float
resp.consumed_capacity.table.write_capacity_units #=> Float
resp.consumed_capacity.table.capacity_units #=> Float
resp.consumed_capacity.local_secondary_indexes #=> Hash
resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
resp.consumed_capacity.global_secondary_indexes #=> Hash
resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
          EXAMPLE
        end

      end
    end
  end
end
