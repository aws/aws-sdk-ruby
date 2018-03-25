# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Query
    describe ParamBuilder do

      let(:shapes) { ApiHelper.sample_shapes }

      let(:rules) {
        ApiHelper.sample_api(shapes: shapes).operation(:example_operation).input
      }

      def query(params = {})
        param_list = ParamList.new
        ParamBuilder.new(param_list).apply(rules, params)
        param_list.map { |param| [param.name, param.value ] }.sort
      end

      it 'returns an empty list when there are no params' do
        expect(query({})).to eq([])
      end

      it 'can serialize structures' do
        params = Structure.new(*rules.shape.member_names).new
        params.boolean = true
        params.integer = 123
        params.string = 'abc'
        expect(query(params)).to eq([
          ['Boolean', 'true'],
          ['Integer', '123'],
          ['String', 'abc'],
        ])
      end

      it 'does not serialize nil values' do
        params = {
          string: 'abc',
          integer: nil,
        }
        expect(query(params)).to eq([
          ['String', 'abc'],
        ])
      end

      it 'supports locationName on structure members' do
        shapes['StructureShape']['members']['String']['locationName'] = 'Value'
        expect(query(string: 'abc')).to eq([
          ['Value', 'abc'],
        ])
      end

      it 'supports locationName traits on list members' do
        shapes['IntegerList']['member']['locationName'] = 'Int'
        expect(query(number_list: [3,2,1])).to eq([
          ['NumberList.Int.1', '3'],
          ['NumberList.Int.2', '2'],
          ['NumberList.Int.3', '1'],
        ])
      end

      it 'supports locationName traits on map keys and values' do
        shapes['StringMap']['key']['locationName'] = 'AttrName'
        shapes['StringMap']['value']['locationName'] = 'AttrValue'
        params = {
          string_map: {
            'color' => 'red',
            'size' => 'large',
          }
        }
        expect(query(params)).to eq([
          ['StringMap.entry.1.AttrName', 'color'],
          ['StringMap.entry.1.AttrValue', 'red'],
          ['StringMap.entry.2.AttrName', 'size'],
          ['StringMap.entry.2.AttrValue', 'large'],
        ])
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
        expect(query(params)).to eq([
          ['Blob', 'ZGF0YQ=='],
          ['Boolean', 'true'],
          ['Byte', 'a'],
          ['Character', 'b'],
          ['Double', '123.456'],
          ['Float', '654.321'],
          ['Long', '321'],
          ['Nested.Integer', '1'],
          ['Nested.Nested.Integer', '2'],
          ['Nested.Nested.Nested.Integer', '3'],
          ['NestedList.member.1.String', 'v1'],
          ['NestedList.member.2.String', 'v2'],
          ['NestedList.member.3.Nested.String', 'v3'],
          ['NestedMap.entry.1.key', 'First'],
          ['NestedMap.entry.1.value.String', 'v1'],
          ['NestedMap.entry.2.key', 'Second'],
          ['NestedMap.entry.2.value.Nested.String', 'v2'],
          ['NumberList.member.1', '1'],
          ['NumberList.member.2', '2'],
          ['NumberList.member.3', '3'],
          ['NumberList.member.4', '4'],
          ['NumberList.member.5', '5'],
          ['String', 'Hello'],
          ['StringMap.entry.1.key', 'Size'],
          ['StringMap.entry.1.value', 'large'],
          ['StringMap.entry.2.key', 'Color'],
          ['StringMap.entry.2.value', 'red'],
          ['Timestamp', '1973-11-29T21:33:09Z']
        ])
      end

      it 'supports empty lists' do
        expect(query(number_list:[])).to eq([
          ['NumberList', '']
        ])
      end

      it 'supports flattened lists' do
        shapes['IntegerList']['flattened'] = true
        expect(query(number_list: [3,2,1])).to eq([
          ['NumberList.1', '3'],
          ['NumberList.2', '2'],
          ['NumberList.3', '1'],
        ])
      end

      it 'supports flattened lists with locationName traits' do
        shapes['IntegerList']['flattened'] = true
        shapes['IntegerList']['member']['locationName'] = 'Number'
        expect(query(number_list: [3,2,1])).to eq([
          ['Number.1', '3'],
          ['Number.2', '2'],
          ['Number.3', '1'],
        ])
      end

      it 'supports flattened maps' do
        shapes['StringMap']['flattened'] = true
        params = {
          string_map: {
            'color' => 'red',
            'size' => 'large',
          }
        }
        expect(query(params)).to eq([
          ['StringMap.1.key', 'color'],
          ['StringMap.1.value', 'red'],
          ['StringMap.2.key', 'size'],
          ['StringMap.2.value', 'large'],
        ])
      end

      it 'supports flattened maps with locationName traits' do
        shapes['StringMap']['flattened'] = true
        shapes['StringMap']['key']['locationName'] = 'AttrName'
        shapes['StringMap']['value']['locationName'] = 'AttrValue'
        params = {
          string_map: {
            'color' => 'red',
            'size' => 'large',
          }
        }
        expect(query(params)).to eq([
          ['StringMap.1.AttrName', 'color'],
          ['StringMap.1.AttrValue', 'red'],
          ['StringMap.2.AttrName', 'size'],
          ['StringMap.2.AttrValue', 'large'],
        ])
      end

    end
  end
end
