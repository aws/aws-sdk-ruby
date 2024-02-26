# frozen_string_literal: true

require_relative '../spec_helper'

module AwsSdkCodeGenerator
    describe SyntaxExampleHash do

      it 'supports operations that accept hashes of scalars' do
        example = SyntaxExampleHash.new(
          shape: {
            'members' => {
              'ParamName' => { 'shape' => 'String' },
              'OtherParam' => { 'shape' => 'String' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  param_name: "String",
  other_param: "String",
}
        EXAMPLE
      end

      it 'comments on required entries' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['ParamName'],
            'members' => {
              'ParamName' => { 'shape' => 'String' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  param_name: "String", # required
}
        EXAMPLE
     end

      it 'comments on accepted values for enums' do
        example = SyntaxExampleHash.new(
          shape: {
            'members' => {
              'ParamName' => { 'shape' => 'String' },
            }
          },
          api: {
            'shapes' => {
              'String' => {
                'type' => 'string',
                'enum' => ['abc', 'mno', 'xyz']
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  param_name: "abc", # accepts abc, mno, xyz
}
        EXAMPLE
      end

      it 'combines required and enum comments' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['ParamName'],
            'members' => {
              'ParamName' => { 'shape' => 'String' },
            }
          },
          api: {
            'shapes' => {
              'String' => {
                'type' => 'string',
                'enum' => ['abc', 'mno', 'xyz']
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  param_name: "abc", # required, accepts abc, mno, xyz
}
        EXAMPLE
      end

      it 'supports nested structures' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Nested'],
            'members' => {
              'Nested' => { 'shape' => 'StructShape' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' },
              'StructShape' => {
                'type' => 'structure',
                'required' => ['Param'],
                'members' => {
                  'Param' => { 'shape' => 'String' }
                }
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  nested: { # required
    param: "String", # required
  },
}
        EXAMPLE
      end

      it 'supports list of scalars with enums' do
        example = SyntaxExampleHash.new(
          shape: {
            'members' => {
              'Items' => { 'shape' => 'StringList' },
            }
          },
          api: {
            'shapes' => {
              'String' => {
                'type' => 'string',
                'enum' => ['abc', 'mno', 'xyz']
              },
              'StringList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' }
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  items: ["abc"], # accepts abc, mno, xyz
}
        EXAMPLE
      end

      it 'supports required list of scalars with enums' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Items'],
            'members' => {
              'Items' => { 'shape' => 'StringList' },
            }
          },
          api: {
            'shapes' => {
              'String' => {
                'type' => 'string',
                'enum' => ['abc', 'mno', 'xyz']
              },
              'StringList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' }
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  items: ["abc"], # required, accepts abc, mno, xyz
}
        EXAMPLE
      end

      it 'supports lists of structures' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Items'],
            'members' => {
              'Items' => { 'shape' => 'StructureList' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' },
              'Integer' => { 'type' => 'integer' },
              'StructureList' => {
                'type' => 'list',
                'member' => { 'shape' => 'StructureShape' },
              },
              'StructureShape' => {
                'type' => 'structure',
                'members' => {
                  'Value' => { 'shape' => 'String' },
                  'Count' => { 'shape' => 'Integer' },
                }
              }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  items: [ # required
    {
      value: "String",
      count: 1,
    },
  ],
}
        EXAMPLE
      end

      it 'supports maps of scalars' do
        example = SyntaxExampleHash.new(
          shape: {
            'members' => {
              'Attributes' => { 'shape' => 'StringMap' },
            }
          },
          api: {
            'shapes' => {
              'KeyName' => { 'type' => 'string' },
              'ValueName' => { 'type' => 'string' },
              'StringMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'KeyName' },
                'value' => { 'shape' => 'ValueName' },
              },
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  attributes: {
    "KeyName" => "ValueName",
  },
}
        EXAMPLE
      end

      it 'supports maps of scalars with enums' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Attributes'],
            'members' => {
              'Attributes' => { 'shape' => 'StringMap' },
            }
          },
          api: {
            'shapes' => {
              'KeyName' => { 'type' => 'string' },
              'ValueName' => {
                'type' => 'string',
                'enum' => %w(abc mno xyz),
              },
              'StringMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'KeyName' },
                'value' => { 'shape' => 'ValueName' },
              },
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  attributes: { # required
    "KeyName" => "abc", # accepts abc, mno, xyz
  },
}
        EXAMPLE
      end

      it 'supports maps of list' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Attributes'],
            'members' => {
              'Attributes' => { 'shape' => 'StringMap' },
            }
          },
          api: {
            'shapes' => {
              'KeyName' => { 'type' => 'string' },
              'Value' => {
                'type' => 'string',
                'enum' => %w(abc mno xyz),
              },
              'StringList' => {
                'type' => 'list',
                'member' => { 'shape' => 'Value' },
              },
              'StringMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'KeyName' },
                'value' => { 'shape' => 'StringList' },
              },
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  attributes: { # required
    "KeyName" => ["abc"], # accepts abc, mno, xyz
  },
}
        EXAMPLE
      end

      it 'supports maps of list' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Attributes'],
            'members' => {
              'Attributes' => { 'shape' => 'Map' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' },
              'Key' => { 'type' => 'string' },
              'Struct' => {
                'type' => 'structure',
                'members' => {
                  'Value' => { 'shape' => 'String' },
                }
              },
              'List' => {
                'type' => 'list',
                'member' => { 'shape' => 'Struct' },
              },
              'Map' => {
                'type' => 'map',
                'key' => { 'shape' => 'Key' },
                'value' => { 'shape' => 'List' },
              },
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  attributes: { # required
    "Key" => [
      {
        value: "String",
      },
    ],
  },
}
        EXAMPLE
      end

      it 'supports maps of structures' do
        example = SyntaxExampleHash.new(
          shape: {
            'required' => ['Attributes'],
            'members' => {
              'Attributes' => { 'shape' => 'Map' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' },
              'Integer' => { 'type' => 'integer' },
              'Key' => { 'type' => 'string' },
              'Struct' => {
                'type' => 'structure',
                'members' => {
                  'Value' => { 'shape' => 'String' },
                  'Count' => { 'shape' => 'Integer' },
                }
              },
              'Map' => {
                'type' => 'map',
                'key' => { 'shape' => 'Key' },
                'value' => { 'shape' => 'Struct' },
              },
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  attributes: { # required
    "Key" => {
      value: "String",
      count: 1,
    },
  },
}
        EXAMPLE
      end

      it 'supports complex structures' do
        struct = {
          'members' => {
            'Recursive' => { 'shape' => 'StructureShape' },
          }
        }
        example = SyntaxExampleHash.new(
          shape: struct,
          api: {
            'shapes' => {
              'Integer' => { 'type' => 'integer' },
              'IntegerList' => {
                'type' => 'list',
                'member' => { 'shape' => 'Integer' }
              },
              'RecursiveListShape' => {
                'type' => 'list',
                'member' => { 'shape' => 'StructureShape' }
              },
              'RecursiveMapShape' => {
                'type' => 'map',
                'key' => { 'shape' => 'StringShape' },
                'value' => { 'shape' => 'StructureShape' }
              },
              'StringShape' => { 'type' => 'string' },
              'StringMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'StringShape' },
                'value' => { 'shape' => 'StringShape' }
              },
              'StructureShape' => {
                'type' => 'structure',
                'members' => {
                  'Nested' => { 'shape' => 'StructureShape' },
                  'NestedList' => { 'shape' => 'RecursiveListShape' },
                  'NestedMap' => { 'shape' => 'RecursiveMapShape' },
                  'NumberList' => { 'shape' => 'IntegerList' },
                  'StringMap' => { 'shape' => 'StringMap' },
                  'Blob' => { 'shape' => 'Blob' },
                  'Byte' => { 'shape' => 'Byte' },
                  'Boolean' => { 'shape' => 'Boolean' },
                  'Character' => { 'shape' => 'Character' },
                  'double' => { 'shape' => 'Double' },
                  'float' => { 'shape' => 'Float' },
                  'integer' => { 'shape' => 'Integer' },
                  'long' => { 'shape' => 'Long' },
                  'short' => { 'shape' => 'Short' },
                  'string' => { 'shape' => 'StringShape' },
                  'timestamp' => { 'shape' => 'Timestamp' }
                }
              },
              'Blob' => { 'type' => 'blob' },
              'Byte' => { 'type' => 'byte' },
              'Boolean' => { 'type' => 'boolean' },
              'Character' => { 'type' => 'character' },
              'Double' => { 'type' => 'double' },
              'Float' => { 'type' => 'float' },
              'Long' => { 'type' => 'long' },
              'Short' => { 'type' => 'short' },
              'Timestamp' => { 'type' => 'timestamp' }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
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
    byte: 97,
    boolean: false,
    character: "a",
    double: 1.0,
    float: 1.0,
    integer: 1,
    long: 1,
    string: "StringShape",
    timestamp: Time.now,
  },
}
        EXAMPLE
      end

      it 'documents the simplified dynamodb attribute values' do
        example = SyntaxExampleHash.new(
          shape: {
            'members' => {
              'Recursive' => { 'shape' => 'Structure' },
            }
          },
          api: {
            'shapes' => {
              'String' => { 'type' => 'string' },
              'ListShape' => {
                'type' => 'list',
                'member' => { 'shape' => 'AttributeValue' },
              },
              'MapShape' => {
                'type' => 'map',
                'key' => { 'shape' => 'String' },
                'value' => { 'shape' => 'AttributeValue' },
              },
              'Structure' => {
                'type' => 'structure',
                'members' => {
                  'List' => { 'shape' => 'ListShape' },
                  'Map' => { 'shape' => 'MapShape' },
                  'Member' => { 'shape' => 'AttributeValue' },
                }
              },
              'AttributeValue' => { 'type' => 'structure' }
            }
          }
        )
        expect(example.format).to match_example(<<-EXAMPLE)
{
  recursive: {
    list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    map: {
      "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    },
    member: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
  },
}
        EXAMPLE
      end

    end
end
