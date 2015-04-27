require 'spec_helper'

module Aws
  module Json
    describe Builder do

      let(:shapes) { ApiHelper.sample_shapes }

      def json(params)
        shape_map = Api::ShapeMap.new(shapes)
        rules = shape_map.shape_ref('shape' => 'StructureShape')
        Builder.new(rules).to_json(params)
      end

      it 'builds an empty JOSN document when there are no params' do
        expect(json({})).to eq('{}')
      end

      it 'supports locationName traits on structure members' do
        shapes['StructureShape']['members']['String']['locationName'] = 'str'
        expect(json(string: 'abc')).to eq('{"str":"abc"}')
      end

      it 'supports nested and complex structures' do
        expect(json({
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
        })).to eq('{"Nested":{"Nested":{"Nested":{"Integer":3},"Integer":2},"Integer":1},"NestedList":[{"String":"v1"},{"String":"v2"},{"Nested":{"String":"v3"}}],"NestedMap":{"First":{"String":"v1"},"Second":{"Nested":{"String":"v2"}}},"NumberList":[1,2,3,4,5],"StringMap":{"Size":"large","Color":"red"},"Blob":"ZGF0YQ==","Byte":"a","Boolean":true,"Character":"b","Double":123.456,"Float":654.321,"Long":321,"String":"Hello","Timestamp":123456789}')
      end

      it 'does not serialize nil values' do
        expect(json(string: 'abc', integer: nil)).to eq('{"String":"abc"}')
      end

    end
  end
end
