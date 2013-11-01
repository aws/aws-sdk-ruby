require 'spec_helper'
require 'time'

module Aws
  module Xml
    describe Parser do

      let(:rules) {{
        'type' => 'output',
        'members' => {},
      }}

      let(:shape) { Seahorse::Model::Shapes::Shape.from_hash(rules) }

      def parse(xml)
        Parser.new.parse(shape, xml).to_hash
      end

      it 'returns an empty hash when the XML is empty' do
        expect(parse('<xml/>')).to eq({})
      end

      it 'ignores xml namespaces on the root element' do
        expect(parse('<xml xmlns="http://xmlns.com"/>')).to eq({})
      end

      it 'ignores xml elements when the rules are empty' do
        rules['members'] = {}
        expect(parse('<xml><foo>bar</foo></xml>')).to eq({})
      end

      it 'returns an instance of Struct' do
        expect(Parser.parse(shape, '<xml/>')).to be_kind_of(Aws::Structure)
      end

      describe 'structures' do

        it 'parses structure members' do
          rules['members'] = {
            'first' => { 'type' => 'string' },
            'last' => { 'type' => 'string' }
          }
          xml = <<-XML
            <xml>
              <first>abc</first>
              <last>xyz</last>
            </xml>
          XML
          expect(parse(xml)).to eq(first: 'abc', last: 'xyz')
        end

        it 'parses members using their serialized name' do
          rules['members'] = {
            'first' => { 'type' => 'string', 'serialized_name' => 'FirstName' },
            'last' => { 'type' => 'string', 'serialized_name' => 'LastName' }
          }
          xml = <<-XML
            <xml>
              <FirstName>John</FirstName>
              <LastName>Doe</LastName>
            </xml>
          XML
          expect(parse(xml)).to eq(first: 'John', last: 'Doe')
        end

        it 'parses structures of structures' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'state' => { 'type' => 'string' }
              }
            },
            'name' => { 'type' => 'string' }
          }
          xml = <<-XML
            <xml>
              <config>
                <state>on</state>
              </config>
              <name>abc</name>
            </xml>
          XML
          expect(parse(xml)).to eq(config: { state: 'on' }, name: 'abc')
        end

      end

      describe 'non-flattened lists' do

        it 'returns missing lists as []' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml/>"
          expect(parse(xml)[:items]).to eq([])
        end

        it 'returns empty list elements as []' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml><items/></xml>"
          expect(parse(xml)[:items]).to eq([])
        end

        it 'converts lists of strings into arrays of strings' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <items>
                <member>abc</member>
                <member>mno</member>
                <member>xyz</member>
              </items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq(%w(abc mno xyz))
        end

        it 'accepts lists of single elements' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'enabled' => { 'type' => 'boolean' }
                }
              }
            }
          }
          xml = <<-XML
            <xml>
              <items>
                <member>
                  <enabled>true</enabled>
                </member>
              </items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq([{ enabled: true }])
        end

        it 'observes the list member serialization name when present' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string', 'serialized_name' => 'item' }
            }
          }
          xml = <<-XML
            <xml>
              <items>
                <item>abc</item>
                <item>mno</item>
                <item>xyz</item>
              </items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq(%w(abc mno xyz))
        end

        it 'can parse lists of complex types' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'serialized_name' => 'item',
                'members' => { 'name' => { 'type' => 'string' } }
              }
            }
          }
          xml = <<-XML
            <xml>
              <items>
                <item><name>abc</name></item>
                <item><name>mno</name></item>
                <item><name>xyz</name></item>
              </items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq([
            { name: 'abc' },
            { name: 'mno' },
            { name: 'xyz' }
          ])
        end

      end

      describe 'flattened lists' do

        it 'returns missing lists as []' do
          rules['members'] = {
            'items' => {
              'type' => 'flat_list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml/>"
          expect(parse(xml)[:items]).to eq([])
        end

        it 'returns empty list elements as []' do
          rules['members'] = {
            'items' => {
              'type' => 'flat_list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml><items/></xml>"
          expect(parse(xml)[:items]).to eq([])
        end

        it 'converts lists of strings into arrays of strings' do
          rules['members'] = {
            'items' => {
              'type' => 'flat_list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <items>abc</items>
              <items>mno</items>
              <items>xyz</items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq(%w(abc mno xyz))
        end

        it 'accepts lists of a single element' do
          rules['members'] = {
            'items' => {
              'type' => 'flat_list',
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <items>abc</items>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq(['abc'])
        end

        it 'observes the list serialization name when present' do
          rules['members'] = {
            'items' => {
              'type' => 'flat_list',
              'members' => { 'type' => 'string', 'serialized_name' => 'item' }
            }
          }
          xml = <<-XML
            <xml>
              <item>abc</item>
              <item>mno</item>
              <item>xyz</item>
            </xml>
          XML
          expect(parse(xml)[:items]).to eq(%w(abc mno xyz))
        end

        it 'can parse lists of complex types' do
          rules['members'] = {
            'people' => {
              'type' => 'flat_list',
              'serialized_name' => 'Person',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'name' => { 'type' => 'string', 'serialized_name' => 'Name' }
                }
              }
            }
          }
          xml = <<-XML
            <xml>
              <Person><Name>abc</Name></Person>
              <Person><Name>mno</Name></Person>
              <Person><Name>xyz</Name></Person>
            </xml>
          XML
          expect(parse(xml)[:people]).to eq([
            { name: 'abc' },
            { name: 'mno' },
            { name: 'xyz' }
          ])
        end

      end

      describe 'non-flattened maps' do

        it 'returns missing maps as {}' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml/>"
          expect(parse(xml)[:attributes]).to eq({})
        end

        it 'returns empty maps as {}' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml><attributes/></xml>"
          expect(parse(xml)[:attributes]).to eq({})
        end

        it 'expects entry, key and value tags by default' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <entry>
                  <key>Color</key>
                  <value>red</value>
                </entry>
                <entry>
                  <key>Size</key>
                  <value>large</value>
                </entry>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq({
            'Color' => 'red',
            'Size' => 'large'
          })
        end

        it 'accepts maps with a single entry' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <entry>
                  <key>Color</key>
                  <value>red</value>
                </entry>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq('Color' => 'red')
        end

        it 'accepts alternate key and value names' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string', 'serialized_name' => 'attr' },
              'members' => { 'type' => 'string', 'serialized_name' => 'val' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <entry>
                  <attr>hue</attr>
                  <val>red</val>
                </entry>
                <entry>
                  <attr>size</attr>
                  <val>med</val>
                </entry>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq('hue' => 'red', 'size' => 'med')
        end

      end

      describe 'flattened maps' do

        it 'returns missing maps as {}' do
          rules['members'] = {
            'attributes' => {
              'type' => 'flat_map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml/>"
          expect(parse(xml)[:attributes]).to eq({})
        end

        it 'returns empty maps as {}' do
          rules['members'] = {
            'attributes' => {
              'type' => 'flat_map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = "<xml><attributes/></xml>"
          expect(parse(xml)[:attributes]).to eq({})
        end

        it 'expects key and value tags by default' do
          rules['members'] = {
            'attributes' => {
              'type' => 'flat_map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <key>Color</key>
                <value>red</value>
              </attributes>
              <attributes>
                <key>Size</key>
                <value>large</value>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq({
            'Color' => 'red',
            'Size' => 'large'
          })
        end

        it 'accepts maps with a single entry' do
          rules['members'] = {
            'attributes' => {
              'type' => 'flat_map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <key>Color</key>
                <value>red</value>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq('Color' => 'red')
        end

        it 'accepts alternate key and value names' do
          rules['members'] = {
            'attributes' => {
              'type' => 'flat_map',
              'keys' => { 'type' => 'string', 'serialized_name' => 'attr' },
              'members' => { 'type' => 'string', 'serialized_name' => 'val' }
            }
          }
          xml = <<-XML
            <xml>
              <attributes>
                <attr>hue</attr>
                <val>red</val>
              </attributes>
              <attributes>
                <attr>size</attr>
                <val>med</val>
              </attributes>
            </xml>
          XML
          expect(parse(xml)[:attributes]).to eq('hue' => 'red', 'size' => 'med')
        end

      end

      describe 'booleans' do

        before(:each) do
          rules['members'] = { 'enabled' => { 'type' => 'boolean' } }
        end

        it 'converts boolean true values' do
          xml = "<xml><enabled>true</enabled></xml>"
          expect(parse(xml)).to eq(enabled: true)
        end

        it 'converts boolean false values' do
          xml = "<xml><enabled>false</enabled></xml>"
          expect(parse(xml)).to eq(enabled: false)
        end

        it 'does not apply a boolean true/false value when not present' do
          xml = "<xml/>"
          expect(parse(xml)).to eq({})
        end

      end

      describe 'timestamps' do

        before(:each) do
          rules['members'] = {
            'created_at' => {
              'type' => 'timestamp',
              'serialized_name' => 'CreatedAt',
            }
          }
        end

        it 'returns an empty element as nil' do
          xml = "<xml><CreatedAt/></xml>"
          expect(parse(xml)[:created_at]).to be(nil)
        end

        it 'can parse unix timestamps' do
          timestamp = 1349908100
          time = Time.at(timestamp)
          xml = "<xml><CreatedAt>#{timestamp}</CreatedAt></xml>"
          data = parse(xml)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'understands basic iso8601 strings' do
          timestamp = '2012-09-10T15:47:10.001Z'
          time = Time.parse(timestamp).to_time.utc
          xml = "<xml><CreatedAt>#{timestamp}</CreatedAt></xml>"
          data = parse(xml)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'understands basic rfc822 strings' do
          timestamp = 'Wed, 10 Oct 2012 15:59:55 UTC'
          time = Time.parse(timestamp).to_time.utc
          xml = "<xml><CreatedAt>#{timestamp}</CreatedAt></xml>"
          data = parse(xml)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'throws an error when unable to determine the format' do
          timestamp = 'bad-date-format'
          xml = "<xml><CreatedAt>#{timestamp}</CreatedAt></xml>"
          expect {
            parse(xml)
          }.to raise_error("unhandled timestamp format `#{timestamp}'")
        end

      end

      describe 'integers' do

        before(:each) do
          rules['members'] = { 'count' => { 'type' => 'integer' } }
        end

        it 'parses integer elements' do
          xml = "<xml><count>123</count></xml>"
          expect(parse(xml)[:count]).to eq(123)
        end

        it 'returns empty elements as nil' do
          xml = "<xml><count/></xml>"
          expect(parse(xml)[:count]).to eq(nil)
        end

      end

      describe 'floats' do

        before(:each) do
          rules['members'] = { 'price' => { 'type' => 'float' } }
        end

        it 'parses float elements' do
          xml = "<xml><price>12.34</price></xml>"
          expect(parse(xml)[:price]).to eq(12.34)
        end

        it 'returns empty elements as nil' do
          xml = "<xml><price/></xml>"
          expect(parse(xml)[:price]).to eq(nil)
        end

      end

      describe 'strings' do

        it 'returns nil for empty elements' do
          rules['members'] = {
            'data' => { 'type' => 'string' }
          }
          xml = "<xml><data/></xml>"
          expect(parse(xml)[:data]).to be(nil)
        end

        it 'base64 decodes strings when encoding attribute is present' do
          rules['members'] = {
            'encoded' => { 'type' => 'string' },
            'not_encoded' => { 'type' => 'string' },
            'nested' => {
              'type' => 'structure',
              'members' => {
                'encoded' => { 'type' => 'string' }
              }
            }
          }
          xml = <<-XML.strip
          <xml>
            <encoded encoding="base64">#{Base64.encode64('a')}</encoded>
            <not_encoded abc="yxz">mno</not_encoded>
            <nested>
              <encoded encoding="base64">#{Base64.encode64('b')}</encoded>
            </nested>
          </xml>
          XML
          parsed = parse(xml)
          expect(parsed[:encoded]).to eq('a')
          expect(parsed[:nested][:encoded]).to eq('b')
          expect(parsed[:not_encoded]).to eq('mno')
        end

      end

      describe 'blobs' do

        it 'returns nil for empty elements' do
          rules['members'] = {
            'data' => { 'type' => 'blob' }
          }
          xml = "<xml><data/></xml>"
          expect(parse(xml)[:data]).to be(nil)
        end

        it 'base64 decodes blob elements' do
          rules['members'] = {
            'data' => { 'type' => 'blob' }
          }
          xml = "<xml><data>aGVsbG8=</data></xml>"
          expect(parse(xml)).to eq(data: 'hello')
        end

      end

      describe 'xml attributes' do

        it 'omits attributes that are not members' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'state' => { 'type' => 'string' }
              }
            }
          }
          xml = "<xml><config foo='bar'><state>on</state></config></xml>"
          expect(parse(xml)).to eq(config: { state: 'on' })
        end

        it 'merges xml attributes that are members' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'state' => { 'type' => 'string' },
                'foo' => { 'type' => 'string' }
              }
            }
          }
          xml = "<xml><config foo='bar'><state>on</state></config></xml>"
          expect(parse(xml)).to eq(config: { state: 'on', foo: 'bar' })
        end

      end

      describe 'parsing errors' do

        it 'does not trap xml parsing errors' do
          xml = '<xml'
          expect { parse(xml) }.to raise_error
        end

      end

    end
  end
end
