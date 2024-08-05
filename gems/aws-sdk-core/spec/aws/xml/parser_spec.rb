# frozen_string_literal: true

require_relative '../../spec_helper'
require 'time'

module Aws
  module Xml
    describe Parser do
      [:ox, :oga, :nokogiri, :libxml, :rexml].each do |engine|
        describe("ENGINE: #{engine}") do
          before(:all) do
            Parser.engine = engine
          rescue LoadError
            skip "Skipping tests for missing engine: #{engine}"
          end

          let(:shapes) { ApiHelper.sample_shapes }

          let(:parser) do
            api = ApiHelper.sample_api(shapes:shapes)
            rules = api.operation(:example_operation).output
            Parser.new(rules)
          end

          def parse(xml, to_h = true)
            data = parser.parse(xml)
            to_h ? data.to_h : data
          end

          it 'does not trap xml parsing errors' do
            xml = '<xml'
            expect { parse(xml) }.to raise_error(Parser::ParsingError)
          end

          it 'returns an empty hash when the XML is empty' do
            expect(parse('<xml/>')).to eq({})
          end

          it 'ignores xml namespaces on the root element' do
            expect(parse('<xml xmlns="http://xmlns.com"/>')).to eq({})
          end

          it 'returns an instance of Struct' do
            expect(parse('<xml/>', false)).to be_kind_of(Struct)
          end

          it 'parses complex and nested documents' do
            xml = <<-XML.strip
            <xml>
              <Nested>
                <Nested>
                  <Nested>
                    <Integer>3</Integer>
                  </Nested>
                  <Integer>2</Integer>
                </Nested>
                <Integer>1</Integer>
              </Nested>
              <NestedList>
                <member>
                  <String>v1</String>
                </member>
                <member>
                  <String>v2</String>
                </member>
                <member>
                  <Nested>
                    <String>v3</String>
                  </Nested>
                </member>
              </NestedList>
              <NestedMap>
                <entry>
                  <key>First</key>
                  <value><String>v1</String></value>
                </entry>
                <entry>
                  <key>Second</key>
                  <value>
                    <Nested>
                      <String>v2</String>
                    </Nested>
                  </value>
                </entry>
              </NestedMap>
              <NumberList>
                <member>1</member>
                <member>2</member>
                <member>3</member>
                <member>4</member>
                <member>5</member>
              </NumberList>
              <StringMap>
                <entry>
                  <key>Size</key>
                  <value>large</value>
                </entry>
                <entry>
                  <key>Color</key>
                  <value>red</value>
                </entry>
              </StringMap>
              <Blob>#{Base64.strict_encode64('data')}}</Blob>
              <Byte>90</Byte>
              <Boolean>true</Boolean>
              <Character>b</Character>
              <Double>123.456</Double>
              <Float>654.321</Float>
              <Integer>123</Integer>
              <Long>321</Long>
              <String>Hello</String>
              <StringWithConsecutiveSpaces>foo  bar</StringWithConsecutiveSpaces>
              <StringWithLF>foo\nbar</StringWithLF>
              <Timestamp>123456789</Timestamp>
            </xml>
            XML
            expect(parse(xml)).to eq({
              nested: {
                nested: {
                  nested: { integer: 3 },
                  integer: 2
                },
                integer: 1
              },
              nested_list: [
                { string: "v1" },
                { string: "v2" },
                { nested: { string: "v3" }}
              ],
              nested_map: {
                "First" => { string: "v1" },
                "Second" => { nested: { string: "v2" }},
              },
              number_list: [1,2,3,4,5],
              string_map: {
                "Size" => "large",
                "Color" => "red",
              },
              blob: "data",
              byte: 90,
              boolean: true,
              character: "b",
              double: 123.456,
              float: 654.321,
              integer: 123,
              long: 321,
              string: "Hello",
              timestamp: Time.at(123456789),
              string_with_consecutive_spaces: "foo  bar",
              string_with_lf: "foo\nbar",
            })
          end

          describe 'structures' do

            it 'observes locationName traits' do
              ref = shapes['StructureShape']['members']['Integer']
              ref['locationName'] = 'IntegerElement'
              xml = '<xml><IntegerElement>123</IntegerElement></xml>'
              expect(parse(xml)).to eq(integer: 123)
            end

            it 'ignores unknown elements' do
              xml = '<xml><String>abc</String><Unknown>value</Unknown></xml>'
              expect(parse(xml)).to eq(string: 'abc')
            end

          end

          describe 'lists' do

            it 'observes locationName traits' do # list and list member
              ref = shapes['StructureShape']['members']['NumberList']
              ref['locationName'] = 'Numbers'
              shapes['IntegerList']['member']['locationName'] = 'Value'
              xml = <<-XML.strip
              <xml>
                <Numbers>
                  <Value>1</Value>
                  <Value>2</Value>
                  <Value>3</Value>
                </Numbers>
              </xml>
              XML
              expect(parse(xml)).to eq(number_list:[1,2,3])
            end

            it 'returns missing lists as a DefaultList' do
              xml = '<xml/>'
              expect(parse(xml, false)[:number_list]).to be_kind_of(DefaultList)
              expect(parse(xml)).to eq({})
            end

            it 'returns empty lists as a []' do
              xml = '<xml><NumberList/></xml>'
              expect(parse(xml)).to eq(number_list: [])
            end

            it 'supports flattened lists' do
              shapes['StructureList']['flattened'] = true
              xml = <<-XML.strip
              <xml>
                <NestedList>
                  <String>v1</String>
                </NestedList>
                <NestedList>
                  <String>v2</String>
                </NestedList>
                <NestedList>
                  <String>v3</String>
                </NestedList>
              </xml>
              XML
              expect(parse(xml)).to eq(nested_list: [
                { string: 'v1' },
                { string: 'v2' },
                { string: 'v3' },
              ])
            end

            it 'supports flattened lists with locationName trait' do
              shapes['StructureList']['flattened'] = true
              ref = shapes['StructureShape']['members']['NestedList']
              ref['locationName'] = 'List'
              xml = <<-XML.strip
              <xml>
                <List>
                  <String>v1</String>
                </List>
                <List>
                  <String>v2</String>
                </List>
                <List>
                  <String>v3</String>
                </List>
              </xml>
              XML
              expect(parse(xml)).to eq(nested_list: [
                { string: 'v1' },
                { string: 'v2' },
                { string: 'v3' },
              ])
            end

            it 'does not support member locationName trait in flattened lists' do
              shapes['StructureList']['flattened'] = true
              # locationName trait on targeted member is ignored when serializing
              # serializing flattened lists in structures
              shapes['StructureList']['member']['locationName'] = 'ListMember'

              xml = <<-XML.strip
              <xml>
                <NestedList>
                  <String>v1</String>
                </NestedList>
                <NestedList>
                  <String>v2</String>
                </NestedList>
                <NestedList>
                  <String>v3</String>
                </NestedList>
              </xml>
              XML
              expect(parse(xml)).to eq(
                nested_list: [
                  { string: 'v1' },
                  { string: 'v2' },
                  { string: 'v3' }
                ]
              )
            end

          end

          describe 'maps' do

            it 'returns missing maps as a DefaultMap' do
              xml = '<xml/>'
              expect(parse(xml, false)[:string_map]).to be_kind_of(DefaultMap)
              expect(parse(xml)).to eq({})
            end

            it 'returns empty maps as {}' do
              xml = '<xml><StringMap/></xml>'
              expect(parse(xml)).to eq(string_map: {})
            end

            it 'supports maps with locationName traits' do # key and value
              shapes['StringMap']['key']['locationName'] = 'AttrName'
              shapes['StringMap']['value']['locationName'] = 'AttrValue'
              xml = <<-XML.strip
              <xml>
                <StringMap>
                  <entry>
                    <AttrName>size</AttrName>
                    <AttrValue>large</AttrValue>
                  </entry>
                  <entry>
                    <AttrName>color</AttrName>
                    <AttrValue>red</AttrValue>
                  </entry>
                </StringMap>
              </xml>
              XML
              expect(parse(xml)).to eq(string_map: {
                'size' => 'large',
                'color' => 'red',
              })
            end

            it 'supports flattened maps' do
              shapes['StringMap']['flattened'] = true
              xml = <<-XML.strip
              <xml>
                <StringMap>
                  <key>size</key>
                  <value>large</value>
                </StringMap>
                <StringMap>
                  <key>color</key>
                  <value>red</value>
                </StringMap>
              </xml>
              XML
              expect(parse(xml)).to eq(string_map: {
                'size' => 'large',
                'color' => 'red',
              })
            end

            it 'supports flattened maps with locationName traits' do
              shapes['StringMap']['flattened'] = true
              shapes['StringMap']['key']['locationName'] = 'AttrName'
              shapes['StringMap']['value']['locationName'] = 'AttrValue'
              ref = shapes['StructureShape']['members']['StringMap']
              ref['locationName'] = 'Attributes'
              xml = <<-XML.strip
              <xml>
                <Attributes>
                  <AttrName>size</AttrName>
                  <AttrValue>large</AttrValue>
                </Attributes>
                <Attributes>
                  <AttrName>color</AttrName>
                  <AttrValue>red</AttrValue>
                </Attributes>
              </xml>
              XML
              expect(parse(xml)).to eq(string_map: {
                'size' => 'large',
                'color' => 'red',
              })
            end

          end

          describe 'booleans' do

            it 'supports true values' do
              xml = '<xml><Boolean>true</Boolean></xml>'
              expect(parse(xml)).to eq(boolean: true)
            end

            it 'supports false values' do
              xml = '<xml><Boolean>false</Boolean></xml>'
              expect(parse(xml)).to eq(boolean: false)
            end

            it 'returns nil for an empty element' do
              xml = '<xml><Boolean/></xml>'
              expect(parse(xml)).to eq({})
            end

          end

          describe 'timestamps' do

            it 'supports unix timestamps' do
              now = Time.now.to_i
              xml = "<xml><Timestamp>#{now}</Timestamp></xml>"
              expect(parse(xml)).to eq({timestamp: Time.at(now) })
            end

            it 'supports iso8601 strings' do
              now = Time.now.iso8601
              xml = "<xml><Timestamp>#{now}</Timestamp></xml>"
              expect(parse(xml)).to eq({timestamp: Time.parse(now) })
            end

            it 'supports rfc822 strings' do
              now = Time.now.rfc822
              xml = "<xml><Timestamp>#{now}</Timestamp></xml>"
              expect(parse(xml)).to eq({timestamp: Time.parse(now) })
            end

          end

          describe 'strings' do

            it 'base64 decodes with encoding is set' do
              xml = <<-XML.strip
              <xml>
                <String encoding="base64">#{Base64.encode64('a')}</String>
                <Nested>
                  <String encoding="base64">#{Base64.encode64('b')}</String>
                </Nested>
              </xml>
              XML
              expect(parse(xml)).to eq(string: 'a', nested: { string: 'b' })
            end

            it 'handles backspace characters' do
              skip 'Unable to support' if engine == :libxml

              xml = "<xml><String>foo\bbar</String></xml>"
              expect(parse(xml)).to eq(string: "foo\bbar")
            end

          end

          describe 'xml attributes' do

            it 'supports paring structure members from xml attributes' do
              ref = shapes['StructureShape']['members']['String']
              ref['locationName'] = 'stringAsAttribute'
              xml = '<xml><Nested stringAsAttribute="value"/></xml>'
              expect(parse(xml)).to eq(nested: { string: 'value' })
            end

            it 'ignores xml attributes that are not members' do
              xml = '<xml><Nested ignored="value"/></xml>'
              expect(parse(xml)).to eq(nested: {})
            end

            it 'supports xml attributes with qnames' do
              xml = '<xml><Nested xmlns:xsi="http://example.com" xsi:string-attr-value="value"/></xml>'
              shapes['StructureShape']['members']['String']['xmlAttribute'] = true
              shapes['StructureShape']['members']['String']['locationName'] = 'xsi:string-attr-value'
              expect(parse(xml)).to eq(nested: { string: 'value' })
            end

          end
        end
      end
    end
  end
end
