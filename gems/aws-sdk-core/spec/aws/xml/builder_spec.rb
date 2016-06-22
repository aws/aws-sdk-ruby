require 'spec_helper'

module Aws
  module Xml
    describe Builder do

      let(:shapes) { ApiHelper.sample_shapes }

      let(:ref) {{ 'shape' => 'StructureShape', 'locationName' => 'xml' }}

      let(:rules) { Api::ShapeMap.new(shapes).shape_ref(ref) }

      def xml(params)
        Builder.new(rules).to_xml(params)
      end

      it 'serializes empty values as empty elements' do
        expect(xml({})).to eq("<xml/>\n")
      end

      it 'can serialize structures' do
        params = Structure.new(*rules.shape.member_names).new
        params.boolean = true
        params.integer = 123
        params.string = 'abc'
        expect(xml(params)).to eq(<<-XML)
<xml>
  <Boolean>true</Boolean>
  <Integer>123</Integer>
  <String>abc</String>
</xml>
        XML
      end

      it 'orders xml elements by members order' do
        params = {
          string: 'a',
          boolean: true,
          integer: 1,
        }
        expect(xml(params)).to eq(<<-XML)
<xml>
  <Boolean>true</Boolean>
  <Integer>1</Integer>
  <String>a</String>
</xml>
        XML
      end

      it 'supports locationName traits on structure members' do
        shapes['StructureShape']['members']['NumberList']['locationName'] = 'Ints'
        expect(xml(number_list:[1,2,3])).to eq(<<-XML)
<xml>
  <Ints>
    <member>1</member>
    <member>2</member>
    <member>3</member>
  </Ints>
</xml>
        XML
      end

      it 'supports locationName traits on list members' do
        shapes['IntegerList']['member']['locationName'] = 'int'
        expect(xml(number_list:[1,2,3])).to eq(<<-XML)
<xml>
  <NumberList>
    <int>1</int>
    <int>2</int>
    <int>3</int>
  </NumberList>
</xml>
        XML
      end

      it 'supports locationName traits on map keys and values' do
        shapes['StringMap']['key']['locationName'] = 'attrName'
        shapes['StringMap']['value']['locationName'] = 'attrValue'
        params = {
          string_map: {
            'color' => 'red',
            'size' => 'large',
          }
        }
        expect(xml(params)).to eq(<<-XML)
<xml>
  <StringMap>
    <entry>
      <attrName>color</attrName>
      <attrValue>red</attrValue>
    </entry>
    <entry>
      <attrName>size</attrName>
      <attrValue>large</attrValue>
    </entry>
  </StringMap>
</xml>
        XML
      end

      it 'supports nested and complex structures' do
        params = {
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
          byte: "a",
          boolean: true,
          character: "b",
          double: 123.456,
          float: 654.321,
          long: 321,
          string: "Hello",
          timestamp: Time.at(123456789),
        }
        expect(xml(params)).to eq(<<-XML)
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
      <value>
        <String>v1</String>
      </value>
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
  <Blob>ZGF0YQ==</Blob>
  <Byte>a</Byte>
  <Boolean>true</Boolean>
  <Character>b</Character>
  <Double>123.456</Double>
  <Float>654.321</Float>
  <Long>321</Long>
  <String>Hello</String>
  <Timestamp>#{Time.at(123456789).utc.iso8601}</Timestamp>
</xml>
        XML
      end

      it 'supports flat lists' do
        shapes['IntegerList']['flattened'] = true
        expect(xml(string:'abc', number_list:[1,2,3])).to eq(<<-XML)
<xml>
  <NumberList>1</NumberList>
  <NumberList>2</NumberList>
  <NumberList>3</NumberList>
  <String>abc</String>
</xml>
        XML
      end

      it 'supports flat list with locationName traits' do
        shapes['IntegerList']['flattened'] = true
        shapes['IntegerList']['member']['locationName'] = 'Number'
        expect(xml(string:'abc', number_list:[1,2,3])).to eq(<<-XML)
<xml>
  <Number>1</Number>
  <Number>2</Number>
  <Number>3</Number>
  <String>abc</String>
</xml>
        XML
      end

      it 'does not serialize nil values' do
        expect(xml(string:'abc', integer:nil)).to eq(<<-XML)
<xml>
  <String>abc</String>
</xml>
        XML
      end

      it 'correctly serializes newlines' do
        expect(xml(string:"\n")).to eq(<<-XML)
<xml>
  <String>
</String>
</xml>
        XML
      end


      it 'applies xml attribute members to the structure' do
        shapes['StructureShape']['members']['String']['xmlAttribute'] = true
        shapes['StructureShape']['members']['String']['locationName'] = 'encode'
        params = {
          nested: {
            string: 'base64',
            integer: 123
          }
        }
        expect(xml(params)).to eq(<<-XML)
<xml>
  <Nested encode="base64">
    <Integer>123</Integer>
  </Nested>
</xml>
        XML
      end

      describe 'namespaces' do

        it 'applies xml namespace to the root node' do
          ref['locationName'] = 'Xml'
          ref['xmlNamespace'] = { 'uri' => 'http://foo.com' }
          expect(xml(string:'abc')).to eq(<<-XML)
<Xml xmlns="http://foo.com">
  <String>abc</String>
</Xml>
          XML
        end

        it 'applies xml namespaces to any shape' do
          ns = { 'xmlNamespace' => {
            'prefix' => 'xsi',
            'uri' => 'http://xmlns.com/uri'
          }}
          shapes['StringShape'].update(ns)
          shapes['StructureShape']['members']['Nested'].update(ns)
          params = {
            nested: {
              string: 'abc'
            }
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <Nested xmlns:xsi="http://xmlns.com/uri">
    <String xmlns:xsi="http://xmlns.com/uri">abc</String>
  </Nested>
</xml>
          XML
        end
      end
    end
  end
end
