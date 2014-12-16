require 'spec_helper'

module Aws
  module Xml
    describe Builder do

      let(:members) { {} }

      let(:rules) {{ 'locationName' => 'xml', 'members' => members }}

      def xml(params)
        shape = Seahorse::Model::Shapes::Structure.new(rules)
        Builder.new(shape).to_xml(params)
      end

      describe 'structures' do

        it 'includes members that are present in the params' do
          rules['members'] = {
            'Abc' => { 'type' => 'string' },
            'Mno' => { 'type' => 'string' },
          }
          expect(xml(:mno => 'value')).to eq(<<-XML)
<xml>
  <Mno>value</Mno>
</xml>
          XML
        end

        it 'orders members by rule order, not param order' do
          rules['members'] = {
            'Mno' => { 'type' => 'string' },
            'Abc' => { 'type' => 'string' },
          }
          expect(xml(:abc => 'v2', :mno => 'v1')).to eq(<<-XML)
<xml>
  <Mno>v1</Mno>
  <Abc>v2</Abc>
</xml>
          XML
        end

        it 'serializes nested structures' do
          rules['members'] = {
            'Name' => { 'type' => 'string' },
            'Details' => {
              'type' => 'structure',
              'members' => {
                'Size' => { 'type' => 'string' },
                'Color' => { 'type' => 'string' },
              }
            },
          }
          params = {
            name: 'Name',
            details: {
              size: 'large',
              color: 'red',
            },
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <Name>Name</Name>
  <Details>
    <Size>large</Size>
    <Color>red</Color>
  </Details>
</xml>
          XML
        end

        it 'serializes empty structures as empty nodes' do
          rules['members'] = {
            'Name' => { 'type' => 'string' },
            'Details' => {
              'type' => 'structure',
              'members' => {
                'Size' => { 'type' => 'string' }
              }
            },
          }
          params = { name: 'Name', details: {} }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <Name>Name</Name>
  <Details/>
</xml>
          XML
        end

        it 'applies xml attribute members to the structure' do
          rules['members'] = {
            'Config' => {
              'type' => 'structure',
              'members' => {
                'Encoding' => {
                  'type' => 'string',
                  'xmlAttribute' => true,
                  'locationName' => 'encode',
                },
                'Description' => { 'type' => 'string' },
              }
            }
          }
          params = {
            config: {
              encoding: 'base64',
              description: 'optional'
            }
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <Config encode="base64">
    <Description>optional</Description>
  </Config>
</xml>
          XML
        end

      end

      describe 'non-flattened lists' do

        it 'serializes lists members as "member" by default' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'member' => { 'type' => 'string' }
            }
          }
          expect(xml(values: %w(abc xyz))).to eq(<<-XML)
<xml>
  <Values>
    <member>abc</member>
    <member>xyz</member>
  </Values>
</xml>
          XML
        end

        it 'applies xmlnames to the list wrapper and member entries' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'locationName' => 'ItemList',
              'member' => { 'type' => 'string', 'locationName' => 'Item' }
            }
          }
          expect(xml(values: %w(abc xyz))).to eq(<<-XML)
<xml>
  <ItemList>
    <Item>abc</Item>
    <Item>xyz</Item>
  </ItemList>
</xml>
          XML
        end

        it 'can serialize lists of complex types' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'member' => {
                'type' => 'structure',
                'members' => {
                  'Name' => { 'type' => 'string' }
                }
              }
            }
          }
          expect(xml(values: [{ name: 'abc' }, { name: 'mno' }])).to eq(<<-XML)
<xml>
  <Values>
    <member>
      <Name>abc</Name>
    </member>
    <member>
      <Name>mno</Name>
    </member>
  </Values>
</xml>
          XML
        end

      end

      describe 'flattened lists' do

        it 'serializes lists without a wrapping element' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'member' => { 'type' => 'string' },
              'flattened' => true
            }
          }
          expect(xml(values: %w(abc mno xyz))).to eq(<<-XML)
<xml>
  <Values>abc</Values>
  <Values>mno</Values>
  <Values>xyz</Values>
</xml>
          XML
        end

        it 'applies xmlnames to the list elements' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'locationName' => 'item',
              'member' => { 'type' => 'string' },
              'flattened' => true
            }
          }
          expect(xml(values: %w(abc mno xyz))).to eq(<<-XML)
<xml>
  <item>abc</item>
  <item>mno</item>
  <item>xyz</item>
</xml>
          XML
        end

        it 'can serialize a list of complex types' do
          rules['members'] = {
            'Values' => {
              'type' => 'list',
              'locationName' => 'item',
              'member' => {
                'type' => 'structure',
                'members' => {
                  'Name' => { 'type' => 'string' }
                }
              },
              'flattened' => true
            }
          }
          expect(xml(values: [{ name: 'abc' }, { name: 'mno' }])).to eq(<<-XML)
<xml>
  <item>
    <Name>abc</Name>
  </item>
  <item>
    <Name>mno</Name>
  </item>
</xml>
          XML
        end

      end

      describe 'scalars' do

        it 'serializes integers to string' do
          rules['members']['Count'] = { 'type' => 'integer' }
          expect(xml(count: 123)).to eq(<<-XML)
<xml>
  <Count>123</Count>
</xml>
          XML
        end

        it 'serializes floats to string' do
          value = double('value', :to_s => '123.123')
          rules['members']['Price'] = { 'type' => 'float' }
          expect(xml(price: value)).to eq(<<-XML)
<xml>
  <Price>#{value.to_s}</Price>
</xml>
          XML
        end

        it 'serializes booleans as `true` and `false`' do
          rules['members'] = {
            'Abc' => { 'type' => 'boolean' },
            'Xyz' => { 'type' => 'boolean' }
          }
          expect(xml(abc: true, xyz: false)).to eq(<<-XML)
<xml>
  <Abc>true</Abc>
  <Xyz>false</Xyz>
</xml>
          XML
        end

        it 'serialzies blobs as base64 encoded strings' do
          rules['members'] = {
            'Data' => { 'type' => 'blob' }
          }
          expect(xml(data: StringIO.new('hello'))).to eq(<<-XML)
<xml>
  <Data>aGVsbG8=</Data>
</xml>
          XML
        end

        it 'serializes is8601 timestamp' do
          now = Time.now
          rules['members'] = {
            'When' => {
              'type' => 'timestamp',
              'timestampFormat' => 'iso8601'
            }
          }
          expect(xml(when: now)).to eq(<<-XML)
<xml>
  <When>#{now.utc.iso8601}</When>
</xml>
          XML
        end

        it 'can serialize a timestamp as an rfc822 string' do
          now = Time.now
          rules['members'] = {
            'When' => {
              'type' => 'timestamp',
              'timestampFormat' => 'rfc822'
            }
          }
          expect(xml(when: now)).to eq(<<-XML)
<xml>
  <When>#{now.utc.rfc822}</When>
</xml>
          XML
        end

        it 'raises an error when the timestamp format is unknown' do
          now = Time.now
          rules['members'] = {
            'When' => {
              'type' => 'timestamp',
              'timestampFormat' => 'abc'
            }
          }
          expect { xml(when:now) }.to raise_error(/invalid timestamp/)
        end

        it 'can serialize a timestamp as an unixtimestamp string' do
          now = Time.now
          rules['members'] = {
            'When' => {
              'type' => 'timestamp',
              'timestampFormat' => 'unixTimestamp'
            }
          }
          expect(xml(when: now)).to eq(<<-XML)
<xml>
  <When>#{now.utc.to_i}</When>
</xml>
          XML
        end

      end

      describe 'namespaces' do

        it 'applies xml namespace to the root node' do
          rules['locationName'] = 'FooRequest'
          rules['xmlNamespace'] = { 'uri' => 'http://foo.com' }
          rules['members'] = {
            'Item' => { 'type' => 'string' }
          }
          expect(xml(item:'value')).to eq(<<-XML)
<FooRequest xmlns="http://foo.com">
  <Item>value</Item>
</FooRequest>
          XML
        end

        it 'applies xml namespaces to any shape' do
          ns = { 'xmlNamespace' => {
            'prefix' => 'xsi',
            'uri' => 'http://xmlns.com/uri'
          }}
          rules['members'] = {
            'Scalar' => {
              'type' => 'string',
            }.merge(ns),
            'Struct' => {
              'type' => 'structure',
              'members' => {
                'List' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string', 'locationName' => 'Item' }
                }.merge(ns),
              }
            }.merge(ns)
          }
          params = {
            scalar: 'value',
            struct: {
              list: %w(a b),
            }
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <Scalar xmlns:xsi="http://xmlns.com/uri">value</Scalar>
  <Struct xmlns:xsi="http://xmlns.com/uri">
    <List xmlns:xsi="http://xmlns.com/uri">
      <Item>a</Item>
      <Item>b</Item>
    </List>
  </Struct>
</xml>
          XML
        end

      end
    end
  end
end
