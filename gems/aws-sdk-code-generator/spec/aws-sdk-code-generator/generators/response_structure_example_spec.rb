require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators

    describe ResponseStructureExample do

      let(:members) {{}}

      let(:shapes) {{
        'Integer' => { 'type' => 'integer' },
        'String' => { 'type' => 'string' },
        'StructureShape' => {
          'type' => 'structure',
          'members' => members,
        }
      }}

      let(:example) {
        ResponseStructureExample.new(
          shape_ref: { 'shape' => 'StructureShape' },
          api: { 'shapes' => shapes }
        )
      }

      it 'supports operations that accept hashes of scalars' do
        members['ParamName'] = { 'shape' => 'String' }
        members['OtherParam'] = { 'shape' => 'String' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.param_name #=> String
  resp.other_param #=> String
        EXAMPLE
      end

      it 'comments on accepted values for enums' do
        shapes['String']['enum'] = %w(abc mno xyz)
        members['Value'] = { 'shape' => 'String' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.value #=> String, one of "abc", "mno", "xyz"
        EXAMPLE
      end

      it 'supports nested structures' do
        shapes['NestedStruct'] = {
          'type' => 'structure',
          'members' => {
            'Value' => { 'shape' => 'String' }
          }
        }
        members['Nested'] = { 'shape' => 'NestedStruct' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.nested.value #=> String
        EXAMPLE
      end

      it 'supports recursive structures' do
        members['Value'] = { 'shape' => 'String' }
        members['Nested'] = { 'shape' => 'StructureShape' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.value #=> String
  resp.nested #=> Types::StructureShape
        EXAMPLE
      end

      it 'supports lists of scalars' do
        shapes['StringList'] = {
          'type' => 'list',
          'member' => { 'shape' => 'String' }
        }
        members['Items'] = { 'shape' => 'StringList' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.items #=> Array
  resp.items[0] #=> String
        EXAMPLE
      end

      it 'supports lists of structures' do
        shapes['ValueStruct'] = {
          'type' => 'structure',
          'members' => {
            'Value' => { 'shape' => 'String' },
            'Count' => { 'shape' => 'Integer' }
          }
        }
        shapes['StructList'] = {
          'type' => 'list',
          'member' => { 'shape' => 'ValueStruct' }
        }
        members['Items'] = { 'shape' => 'StructList' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.items #=> Array
  resp.items[0].value #=> String
  resp.items[0].count #=> Integer
        EXAMPLE
      end

      it 'supports lists of scalar maps' do
        shapes['TableName'] = { 'type' => 'string' }
        shapes['MapOfStrings'] = {
          'type' => 'map',
          'key' => { 'shape' => 'TableName' },
          'value' => { 'shape' => 'String' }
        }
        shapes['MapOfStringsList'] = {
          'type' => 'list',
          'member' => { 'shape' => 'MapOfStrings' }
        }
        members['Items'] = { 'shape' => 'MapOfStringsList' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.items #=> Array
  resp.items[0] #=> Hash
  resp.items[0]["TableName"] #=> String
        EXAMPLE
      end

      it 'supports lists of complex maps' do
        shapes['TableName'] = { 'type' => 'string' }
        shapes['Table'] = {
          'type' => 'structure',
          'members' => {
            'Value' => { 'shape' => 'String' },
            'Count' => { 'shape' => 'Integer' }
          }
        }
        shapes['TableMap'] = {
          'type' => 'map',
          'key' => { 'shape' => 'TableName' },
          'value' => { 'shape' => 'Table' }
        }
        shapes['TableMapList'] = {
          'type' => 'list',
          'member' => { 'shape' => 'TableMap' }
        }
        members['Items'] = { 'shape' => 'TableMapList' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.items #=> Array
  resp.items[0] #=> Hash
  resp.items[0]["TableName"].value #=> String
  resp.items[0]["TableName"].count #=> Integer
        EXAMPLE
      end

      it 'supports maps of scalars' do
        shapes['KeyName'] = { 'type' => 'string' }
        shapes['AttributeMap'] = {
          'type' => 'map',
          'key' => { 'shape' => 'KeyName' },
          'value' => { 'shape' => 'String' },
        }
        members['Attributes'] = { 'shape' => 'AttributeMap' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.attributes #=> Hash
  resp.attributes["KeyName"] #=> String
        EXAMPLE
      end

      it 'supports maps of structures' do
        shapes['Attribute'] = {
          'type' => 'structure',
          'members' => {
            'Name' => { 'shape' => 'String' },
            'Value' => { 'shape' => 'String' },
          }
        }
        shapes['AttributeMap'] = {
          'type' => 'map',
          'key' => { 'shape' => 'KeyName' },
          'value' => { 'shape' => 'Attribute' },
        }
        members['Attributes'] = { 'shape' => 'AttributeMap' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.attributes #=> Hash
  resp.attributes["KeyName"].name #=> String
  resp.attributes["KeyName"].value #=> String
        EXAMPLE
      end

      it 'supports maps of lists' do
        shapes['AttributeList'] = {
          'type' => 'list',
          'member' => { 'shape' => 'String' }
        }
        shapes['AttributeMap'] = {
          'type' => 'map',
          'key' => { 'shape' => 'KeyName' },
          'value' => { 'shape' => 'AttributeList' },
        }
        members['Attributes'] = { 'shape' => 'AttributeMap' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.attributes #=> Hash
  resp.attributes["KeyName"] #=> Array
  resp.attributes["KeyName"][0] #=> String
        EXAMPLE
      end

      it 'supports complex structures' do
        example = ResponseStructureExample.new(
          shape_ref: { 'shape' => 'StructureShape' },
          api: {
            'shapes' => {
              'StructureShape' => {
                'type' => 'structure',
                'members' => {
                  # complex members
                  'Nested' => { 'shape' => 'StructureShape' },
                  'NestedList' => { 'shape' => 'StructureList' },
                  'NestedMap' => { 'shape' => 'StructureMap' },
                  'NumberList' => { 'shape' => 'IntegerList' },
                  'StringMap' => { 'shape' => 'StringMap' },
                  # scalar members
                  'Blob' => { 'shape' => 'BlobShape' },
                  'Boolean' => { 'shape' => 'BooleanShape' },
                  'Character' => { 'shape' => 'CharacterShape' },
                  'Double' => { 'shape' => 'DoubleShape' },
                  'Float' => { 'shape' => 'FloatShape' },
                  'Integer' => { 'shape' => 'IntegerShape' },
                  'Long' => { 'shape' => 'LongShape' },
                  'String' => { 'shape' => 'StringShape' },
                  'Timestamp' => { 'shape' => 'TimestampShape' },
                }
              },
              'StructureList' => {
                'type' => 'list',
                'member' => { 'shape' => 'StructureShape' }
              },
              'StructureMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'StringShape' },
                'value' => { 'shape' => 'StructureShape' }
              },
              'IntegerList' => {
                'type' => 'list',
                'member' => { 'shape' => 'IntegerShape' }
              },
              'StringMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'StringShape' },
                'value' => { 'shape' => 'StringShape' }
              },
              'BlobShape' => { 'type' => 'blob' },
              'BooleanShape' => { 'type' => 'boolean' },
              'CharacterShape' => { 'type' => 'character' },
              'DoubleShape' => { 'type' => 'double' },
              'FloatShape' => { 'type' => 'float' },
              'IntegerShape' => { 'type' => 'integer' },
              'LongShape' => { 'type' => 'long' },
              'StringShape' => { 'type' => 'string' },
              'TimestampShape' => { 'type' => 'timestamp' },
            }
          }
        )
        expect(example.to_s).to match_example(<<-EXAMPLE)
@example Response structure
  resp.nested #=> Types::StructureShape
  resp.nested_list #=> Array
  resp.nested_list[0] #=> Types::StructureShape
  resp.nested_map #=> Hash
  resp.nested_map["StringShape"] #=> Types::StructureShape
  resp.number_list #=> Array
  resp.number_list[0] #=> Integer
  resp.string_map #=> Hash
  resp.string_map["StringShape"] #=> String
  resp.blob #=> String
  resp.boolean #=> Boolean
  resp.character #=> String<character>
  resp.double #=> Float
  resp.float #=> Float
  resp.integer #=> Integer
  resp.long #=> Integer
  resp.string #=> String
  resp.timestamp #=> Time
        EXAMPLE
      end

      it 'documents the simplified dynamodb attribute values' do
        shapes['AttributeValueName'] = { 'type' => 'string' }
        shapes['AttributeValue'] = {
          'type' => 'structure',
          'members' => {
            'Name' => { 'shape' => 'String' },
            'Value' => { 'shape' => 'String' },
          }
        }
        shapes['AttributeMap'] = {
          'type' => 'map',
          'key' => { 'shape' => 'AttributeValueName' },
          'value' => { 'shape' => 'AttributeValue' },
        }
        members['Item'] = { 'shape' => 'AttributeMap' }
        expect(example).to match_example(<<-EXAMPLE)
@example Response structure
  resp.item #=> Hash
  resp.item["AttributeValueName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
        EXAMPLE
      end

    end
  end
end
