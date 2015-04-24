require 'spec_helper'
require 'time'

# This engine behaves the same as the rexml parser, except it fires
# multiple text events for the xml text. This ensures the parser
# supports the text value of a single element can be given in
# multiple events.
#
# This is known to happen with Nokogiri on larger xml documents.
#
class Aws::Xml::Parser::DummyEngine < Aws::Xml::Parser::RexmlEngine
  def text(value)
    if value.empty?
      super(value)
    else
      value.chars.each do |char|
        super(char)
      end
    end
  end
end

module Aws
  module Xml
    describe Parser do
      [:OxEngine, :NokogiriEngine, :LibxmlEngine, :RexmlEngine, :DummyEngine].each do |engine|
        describe("ENGINE: #{engine}") do

          begin
            Parser.const_get(engine)
          rescue LoadError
            next
          end

          let(:shapes) {{
            'OutputShape' => {
              'type' => 'structure',
              'members' => {}
            }
          }}

          let(:api) {
            Api::Builder.build({
              'operations' => {
                'ExampleOperation' => {
                  'output' => { 'shape' => 'OutputShape' }
                }
              },
              'shapes' => shapes,
            })
          }

          let(:parser) {
            engine_class = Parser.const_get(engine)
            output = api.operation(:example_operation).output
            Parser.new(output, engine: engine_class)
          }

          def parse(xml, to_h = true)
            data = parser.parse(xml)
            to_h ? data.to_h : data
          end

          it 'returns an empty hash when the XML is empty' do
            expect(parse('<xml/>')).to eq({})
          end

          it 'ignores xml namespaces on the root element' do
            expect(parse('<xml xmlns="http://xmlns.com"/>')).to eq({})
          end

          it 'ignores xml elements when the rules are empty' do
            expect(parse('<xml><foo>bar</foo></xml>')).to eq({})
          end

          it 'returns an instance of Struct' do
            expect(Parser.new(shape).parse('<xml/>')).to be_kind_of(Aws::Structure)
          end

          describe 'structures' do

            it 'ignores root elements' do
              members['First'] = { 'type' => 'string' }
              members['Last'] = { 'type' => 'string' }
              xml = <<-XML.strip
                <?xml version="1.0" encoding="UTF-8"?>
                <xml>
                  <First>abc</First>
                  <Last>xyz</Last>
                </xml>
              XML
              expect(parse(xml)).to eq(first: 'abc', last: 'xyz')
            end

            it 'parses structure members' do
              members['First'] = { 'type' => 'string' }
              members['Last'] = { 'type' => 'string' }
              xml = <<-XML
                <xml>
                  <First>abc</First>
                  <Last>xyz</Last>
                </xml>
              XML
              expect(parse(xml)).to eq(first: 'abc', last: 'xyz')
            end

            it 'parses members using their location name' do
              definition['members'] = {
                'first' => { 'type' => 'string', 'locationName' => 'FirstName' },
                'last' => { 'type' => 'string', 'locationName' => 'LastName' }
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
              definition['members'] = {
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
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' }
                }
              }
              xml = "<xml/>"
              expect(parse(xml, false)[:values]).to eq([])
            end

            it 'popluates list members with a default list when not present' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' }
                }
              }
              xml = "<xml/>"
              result = Parser.new(shape).parse(xml)
              expect(result[:values]).to be_kind_of(DefaultList)
              expect(result[:values]).to be_empty
              expect(result[:values]).to be_nil
            end

            it 'returns empty list elements as []' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' }
                }
              }
              xml = "<xml><Values/></xml>"
              expect(parse(xml)[:values]).to eq([])
            end

            it 'converts lists of strings into arrays of strings' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' }
                }
              }
              xml = <<-XML
                <xml>
                  <Values>
                    <member>abc</member>
                    <member>mno</member>
                    <member>xyz</member>
                  </Values>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq(%w(abc mno xyz))
            end

            it 'accepts lists of single elements' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'structure',
                    'members' => {
                      'Enabled' => { 'type' => 'boolean' }
                    }
                  }
                }
              }
              xml = <<-XML
                <xml>
                  <Values>
                    <member>
                      <Enabled>true</Enabled>
                    </member>
                  </Values>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq([{ enabled: true }])
            end

            it 'observes the list member location name when present' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string', 'locationName' => 'Value' }
                }
              }
              xml = <<-XML
                <xml>
                  <Values>
                    <Value>abc</Value>
                    <Value>mno</Value>
                    <Value>xyz</Value>
                  </Values>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq(%w(abc mno xyz))
            end

            it 'can parse lists of complex types' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => {
                    'type' => 'structure',
                    'locationName' => 'item',
                    'members' => { 'Name' => { 'type' => 'string' } }
                  }
                }
              }
              xml = <<-XML
                <xml>
                  <Values>
                    <item><Name>abc</Name></item>
                    <item><Name>mno</Name></item>
                    <item><Name>xyz</Name></item>
                  </Values>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq([
                { name: 'abc' },
                { name: 'mno' },
                { name: 'xyz' }
              ])
            end

          end

          describe 'flattened lists' do

            it 'returns missing lists as []' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' },
                  'flattened' => true
                }
              }
              xml = "<xml/>"
              expect(parse(xml, false)[:values]).to eq([])
            end

            it 'supports lists of scalars' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'integer' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Values>1</Values>
                  <Values>2</Values>
                  <Values>3</Values>
                </xml>
              XML
              expect(parse(xml)).to eq(values: [1,2,3])
            end

            it 'accepts lists of a single element' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Values>abc</Values>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq(['abc'])
            end

            it 'observes the list serialization name when present' do
              definition['members'] = {
                'Values' => {
                  'type' => 'list',
                  'member' => { 'type' => 'string', 'locationName' => 'Item' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Item>abc</Item>
                  <Item>mno</Item>
                  <Item>xyz</Item>
                </xml>
              XML
              expect(parse(xml)[:values]).to eq(%w(abc mno xyz))
            end

            it 'can parse lists of complex types' do
              definition['members'] = {
                'People' => {
                  'type' => 'list',
                  'locationName' => 'Person',
                  'member' => {
                    'type' => 'structure',
                    'members' => {
                      'Handle' => { 'type' => 'string', 'locationName' => 'Name' }
                    }
                  },
                  'flattened' => true
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
                { handle: 'abc' },
                { handle: 'mno' },
                { handle: 'xyz' },
              ])
            end

          end

          describe 'non-flattened maps' do

            it 'returns missing maps as {}' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' }
                }
              }
              xml = "<xml/>"
              expect(parse(xml)[:attributes]).to eq({})
            end

            it 'returns empty maps as {}' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' }
                }
              }
              xml = "<xml><Attributes/></xml>"
              expect(parse(xml)[:attributes]).to eq({})
            end

            it 'expects entry, key and value tags by default' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' }
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <entry>
                      <key>Color</key>
                      <value>red</value>
                    </entry>
                    <entry>
                      <key>Size</key>
                      <value>large</value>
                    </entry>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq({
                'Color' => 'red',
                'Size' => 'large'
              })
            end

            it 'accepts maps with a single entry' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' }
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <entry>
                      <key>Color</key>
                      <value>red</value>
                    </entry>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq('Color' => 'red')
            end

            it 'accepts alternate key and value names' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string', 'locationName' => 'attr' },
                  'value' => { 'type' => 'string', 'locationName' => 'val' }
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <entry>
                      <attr>hue</attr>
                      <val>red</val>
                    </entry>
                    <entry>
                      <attr>size</attr>
                      <val>med</val>
                    </entry>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq('hue' => 'red', 'size' => 'med')
            end

          end

          describe 'flattened maps' do

            it 'returns missing maps as {}' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' },
                  'flattened' => true
                }
              }
              xml = "<xml/>"
              expect(parse(xml)[:attributes]).to eq({})
            end

            it 'expects key and value tags by default' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <key>Color</key>
                    <value>red</value>
                  </Attributes>
                  <Attributes>
                    <key>Size</key>
                    <value>large</value>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq({
                'Color' => 'red',
                'Size' => 'large'
              })
            end

            it 'accepts maps with a single entry' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string' },
                  'value' => { 'type' => 'string' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <key>Color</key>
                    <value>red</value>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq('Color' => 'red')
            end

            it 'accepts alternate key and value names' do
              definition['members'] = {
                'Attributes' => {
                  'type' => 'map',
                  'key' => { 'type' => 'string', 'locationName' => 'attr' },
                  'value' => { 'type' => 'string', 'locationName' => 'val' },
                  'flattened' => true
                }
              }
              xml = <<-XML
                <xml>
                  <Attributes>
                    <attr>hue</attr>
                    <val>red</val>
                  </Attributes>
                  <Attributes>
                    <attr>size</attr>
                    <val>med</val>
                  </Attributes>
                </xml>
              XML
              expect(parse(xml)[:attributes]).to eq('hue' => 'red', 'size' => 'med')
            end

          end

          describe 'booleans' do

            before(:each) do
              definition['members'] = { 'enabled' => { 'type' => 'boolean' } }
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
              definition['members'] = {
                'CreatedAt' => {
                  'type' => 'timestamp',
                  'locationName' => 'Created',
                }
              }
            end

            it 'returns an empty element as nil' do
              xml = "<xml><Created/></xml>"
              expect(parse(xml)[:created_at]).to be(nil)
            end

            it 'can parse unix timestamps' do
              timestamp = 1349908100
              time = Time.at(timestamp)
              xml = "<xml><Created>#{timestamp}</Created></xml>"
              data = parse(xml)
              expect(data[:created_at]).to be_a(Time)
              expect(data[:created_at]).to eq(time)
            end

            it 'understands basic iso8601 strings' do
              timestamp = '2012-09-10T15:47:10.001Z'
              time = Time.parse(timestamp).to_time.utc
              xml = "<xml><Created>#{timestamp}</Created></xml>"
              data = parse(xml)
              expect(data[:created_at]).to be_a(Time)
              expect(data[:created_at]).to eq(time)
            end

            it 'understands basic rfc822 strings' do
              timestamp = 'Wed, 10 Oct 2012 15:59:55 UTC'
              time = Time.parse(timestamp).to_time.utc
              xml = "<xml><Created>#{timestamp}</Created></xml>"
              data = parse(xml)
              expect(data[:created_at]).to be_a(Time)
              expect(data[:created_at]).to eq(time)
            end

            it 'throws an error when unable to determine the format' do
              timestamp = 'bad-date-format'
              xml = "<xml><Created>#{timestamp}</Created></xml>"
              expect {
                parse(xml)
              }.to raise_error("unhandled timestamp format `#{timestamp}'")
            end

          end

          describe 'integers' do

            before(:each) do
              definition['members'] = { 'count' => { 'type' => 'integer' } }
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
              definition['members'] = { 'price' => { 'type' => 'float' } }
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

            it 'returns the empty string for self closing string XML elements' do
              definition['members'] = {
                'data' => { 'type' => 'string' }
              }
              xml = "<xml><data/></xml>"
              expect(parse(xml)[:data]).to eq('')
            end

            it 'base64 decodes strings when encoding attribute is present' do
              definition['members'] = {
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

            it 'xml decodes string values' do
              definition['members'] = {
                'data' => { 'type' => 'string' }
              }
              xml = "<xml><data>a&amp;b</data></xml>"
              expect(parse(xml)[:data]).to eq('a&b')
            end

          end

          describe 'blobs' do

            it 'returns nil for empty elements' do
              definition['members'] = {
                'data' => { 'type' => 'blob' }
              }
              xml = "<xml><data/></xml>"
              expect(parse(xml)[:data]).to be(nil)
            end

            it 'base64 decodes blob elements' do
              definition['members'] = {
                'data' => { 'type' => 'blob' }
              }
              xml = "<xml><data>aGVsbG8=</data></xml>"
              expect(parse(xml)).to eq(data: 'hello')
            end

          end

          describe 'xml attributes' do

            it 'omits attributes that are not members' do
              definition['members'] = {
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
              definition['members'] = {
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
              expect { parse(xml) }.to raise_error(Parser::ParsingError)
            end

          end

        end
      end
    end
  end
end
