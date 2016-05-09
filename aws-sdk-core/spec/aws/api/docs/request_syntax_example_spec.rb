require 'spec_helper'

module Aws
  module Api
    module Docs

      include Seahorse::Model
      include Seahorse::Model::Shapes

      describe RequestSyntaxExample do

        let(:operation) { Operation.new }

        let(:example) {
          RequestSyntaxExample.new('operation_name', operation).to_str
        }

        it 'supports operations that does not accept input' do
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name()
          EXAMPLE
        end

        it 'supports operations that accept hashes of scalars' do
          input = StructureShape.new
          input.add_member(:param_name, ShapeRef.new(shape: StringShape.new))
          input.add_member(:other_param, ShapeRef.new(shape: StringShape.new))
          operation.input = ShapeRef.new(shape: input)

          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  param_name: "string",
  other_param: "string",
})
          EXAMPLE
        end

        it 'comments on required entries' do
          ref = ShapeRef.new(shape: StringShape.new, required: true)
          input = StructureShape.new
          input.add_member(:param_name, ref)
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  param_name: "string", # required
})
          EXAMPLE
        end

        it 'comments on accepted values for enums' do
          string = StringShape.new
          string.enum = %w(abc mno xyz)
          input = StructureShape.new
          input.add_member(:param_name, ShapeRef.new(shape: string))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  param_name: "abc", # accepts abc, mno, xyz
})
          EXAMPLE
        end

        it 'combines required and enum comments' do
          string = StringShape.new
          string.enum = %w(abc mno xyz)
          input = StructureShape.new
          input.add_member(:param_name, ShapeRef.new(shape: string, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  param_name: "abc", # required, accepts abc, mno, xyz
})
          EXAMPLE
        end

        it 'supports nested structures' do
          nested = StructureShape.new
          nested.add_member(:param, ShapeRef.new(shape: StringShape.new, required: true))
          input = StructureShape.new
          input.add_member(:nested, ShapeRef.new(shape: nested, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  nested: { # required
    param: "string", # required
  },
})
          EXAMPLE
        end

        it 'supports recursive structures' do
          recursive = StructureShape.new
          recursive.name = 'RecursiveData'
          recursive.add_member(:recursive, ShapeRef.new(shape: recursive))
          recursive.add_member(:value, ShapeRef.new(shape: StringShape.new))
          input = StructureShape.new
          input.add_member(:nested, ShapeRef.new(shape: recursive))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  nested: {
    recursive: {
      # recursive RecursiveData
    },
    value: "string",
  },
})
          EXAMPLE
        end

        it 'supports lists of scalars' do
          list = ListShape.new
          list.member = ShapeRef.new(shape: StringShape.new)
          input = StructureShape.new
          input.add_member(:items, ShapeRef.new(shape: list))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  items: ["string"],
})
          EXAMPLE
        end

        it 'supports list of scalars with enums' do
          string = StringShape.new
          string.enum = Set.new(%w(abc mno xyz))
          list = ListShape.new
          list.member = ShapeRef.new(shape: string)
          input = StructureShape.new
          input.add_member(:items, ShapeRef.new(shape: list))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  items: ["abc"], # accepts abc, mno, xyz
})
          EXAMPLE
        end

        it 'supports required list of scalars with enums' do
          string = StringShape.new
          string.enum = Set.new(%w(abc mno xyz))
          list = ListShape.new
          list.member = ShapeRef.new(shape: string)
          input = StructureShape.new
          input.add_member(:items, ShapeRef.new(shape: list, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  items: ["abc"], # required, accepts abc, mno, xyz
})
          EXAMPLE
        end

        it 'supports lists of structures' do
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:count, ShapeRef.new(shape: IntegerShape.new))
          list = ListShape.new
          list.member = ShapeRef.new(shape: struct)
          input = StructureShape.new
          input.add_member(:items, ShapeRef.new(shape: list, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  items: [ # required
    {
      value: "string",
      count: 1,
    },
  ],
})
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
          input = StructureShape.new
          input.add_member(:attributes, ShapeRef.new(shape: map))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  attributes: {
    "KeyName" => "ValueName",
  },
})
          EXAMPLE
        end

        it 'supports maps of scalars with enums' do
          key = StringShape.new
          key.name = 'KeyName'
          value = StringShape.new
          value.name = 'ValueName'
          value.enum = Set.new(%w(abc mno xyz))
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          input = StructureShape.new
          input.add_member(:attributes, ShapeRef.new(shape: map, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  attributes: { # required
    "KeyName" => "abc", # accepts abc, mno, xyz
  },
})
          EXAMPLE
        end

        it 'supports maps of list' do
          string = StringShape.new
          string.enum = Set.new(%w(abc mno xyz))
          key = StringShape.new
          key.name = 'KeyName'
          value = ListShape.new
          value.member = ShapeRef.new(shape: string)
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          input = StructureShape.new
          input.add_member(:attributes, ShapeRef.new(shape: map, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  attributes: { # required
    "KeyName" => ["abc"], # accepts abc, mno, xyz
  },
})
          EXAMPLE
        end

        it 'supports maps of list' do
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          key = StringShape.new
          key.name = 'KeyName'
          value = ListShape.new
          value.member = ShapeRef.new(shape: struct)
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: value)
          input = StructureShape.new
          input.add_member(:attributes, ShapeRef.new(shape: map, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  attributes: { # required
    "KeyName" => [
      {
        value: "string",
      },
    ],
  },
})
          EXAMPLE
        end

        it 'supports maps of structures' do
          struct = StructureShape.new
          struct.add_member(:value, ShapeRef.new(shape: StringShape.new))
          struct.add_member(:count, ShapeRef.new(shape: IntegerShape.new))
          key = StringShape.new
          key.name = 'KeyName'
          map = MapShape.new
          map.key = ShapeRef.new(shape: key)
          map.value = ShapeRef.new(shape: struct)
          input = StructureShape.new
          input.add_member(:attributes, ShapeRef.new(shape: map, required: true))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  attributes: { # required
    "KeyName" => {
      value: "string",
      count: 1,
    },
  },
})
          EXAMPLE
        end

        it 'supports complex structures' do
          shapes = ShapeMap.new(ApiHelper.sample_shapes)
          input = StructureShape.new
          input.add_member(:recursive, shapes.shape_ref('shape' => 'StructureShape'))
          operation.input = ShapeRef.new(shape: input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  recursive: {
    nested: {
      # recursive StructureShape
    },
    nested_list: [
      {
        # recursive StructureShape
      },
    ],
    nested_map: {
      "StringShape" => {
        # recursive StructureShape
      },
    },
    number_list: [1],
    string_map: {
      "StringShape" => "StringShape",
    },
    blob: "data",
    byte: "ByteShape",
    boolean: false,
    character: "CharacterShape",
    double: 1.0,
    float: 1.0,
    integer: 1,
    long: 1,
    string: "StringShape",
    timestamp: Time.now,
  },
})
          EXAMPLE
        end

        it 'documents the simplified dynamodb attribute values' do
          attr_value = StructureShape.new
          attr_value.name = 'AttributeValue'
          list = ListShape.new
          list.member = ShapeRef.new(shape:attr_value)
          map = MapShape.new
          map.key = ShapeRef.new(shape:StringShape.new)
          map.value = ShapeRef.new(shape:attr_value)
          recursive = StructureShape.new
          recursive.add_member(:list, ShapeRef.new(shape:list))
          recursive.add_member(:map, ShapeRef.new(shape:map))
          recursive.add_member(:member, ShapeRef.new(shape:attr_value))
          input = StructureShape.new
          input.add_member(:recursive, ShapeRef.new(shape:recursive))
          operation.input = ShapeRef.new(shape:input)
          expect(example).to match_example(<<-EXAMPLE)
resp = client.operation_name({
  recursive: {
    list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    map: {
      "string" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    },
    member: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
  },
})
          EXAMPLE
        end

      end
    end
  end
end
