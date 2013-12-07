require 'spec_helper'

module Aws
  module Json
    describe Builder do

      let(:rules) {{
        'type' => 'input',
        'serialized_name' => 'xml',
        'members' => {},
      }}

      def json(params)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Builder.to_json(shape, params)
      end

      describe 'structures' do

        it 'returns an empty xml doc when there are no params' do
          expect(json({})).to eq('{}')
        end

        it 'omits params that are not in the rules' do
          expect(json(abc: 'xyz')).to eq('{}')
        end

        it 'observes serialized name properties' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'serialized_name' => 'FullName' }
          }
          expect(json(name: 'John Doe')).to eq('{"FullName":"John Doe"}')
        end

        it 'serializes nested structures' do
          rules['members'] = {
            'abc' => {
              'type' => 'structure',
              'members' => {
                'mno' => { 'type' => 'string', 'serialized_name' => 'MNO' }
              }
            }
          }
          expect(json(abc: { mno: 'xyz' })).to eq('{"abc":{"MNO":"xyz"}}')
        end

        it 'does not serialize nil members' do
          rules['members'] = {
            'cfg' => {
              'type' => 'structure',
              'members' => {
                'data' => { 'type' => 'blob' },
              }
            }
          }
          expect(json(cfg: { data: nil })).to eq('{"cfg":{}}')
        end

      end

      describe 'lists' do

        it 'serializes lists' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          expect(json(items: %w(abc xyz))).to eq('{"items":["abc","xyz"]}')
        end

        it 'lists of complex shapes' do
          rules['members'] = {
            'abc' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'mno' => { 'type' => 'string', 'serialized_name' => 'MNO' }
                }
              }
            }
          }
          expect(json(abc: [{mno:'xyz'}])).to eq('{"abc":[{"MNO":"xyz"}]}')
        end

      end

      describe 'maps' do

        it 'accepts an arbitrary hash of values' do
          rules['members'] = {
            'attrs' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          params = { attrs: { 'Size' => 'large', 'Color' => 'red' } }
          expect(json(params)).to eq('{"attrs":{"Size":"large","Color":"red"}}')
        end

        it 'supports complex hash values' do
          rules['members'] = {
            'people' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => {
                'type' => 'structure',
                'members' => {
                  'age' => { 'type' => 'integer', 'serialized_name' => 'AGE' }
                }
              }
            }
          }
          params = { people: { 'John' => { age: 40 } } }
          expect(json(params)).to eq('{"people":{"John":{"AGE":40}}}')
        end

      end

      describe 'scalars' do

        it 'serializes integers' do
          rules['members'] = {
            'count' => { 'type' => 'integer' }
          }
          expect(json(count: 123)).to eq('{"count":123}')
        end

        it 'serializes floats' do
          rules['members'] = {
            'price' => { 'type' => 'float' }
          }
          expect(json(price: 12.34)).to eq('{"price":12.34}')
        end

        it 'serializes booleans' do
          rules['members'] = {
            'hot' => { 'type' => 'boolean' },
            'cold' => { 'type' => 'boolean' }
          }
          expect(json(hot:true, cold:false)).to eq('{"hot":true,"cold":false}')
        end

        it 'serializes iso8601 timestamps' do
          now = Time.now
          rules['members'] = {
            'when' => { 'type' => 'iso8601_timestamp' }
          }
          expect(json(when:now)).to eq("{\"when\":\"#{now.utc.iso8601}\"}")
        end

        it 'can serializes timestamps as rfc8622 strings' do
          now = Time.now
          rules['members'] = {
            'when' => {
              'type' => 'rfc822_timestamp'
            }
          }
          expect(json(when:now)).to eq("{\"when\":\"#{now.utc.rfc822}\"}")
        end

        it 'can serializes timestamps as unix timestamps' do
          now = Time.now
          rules['members'] = {
            'when' => {
              'type' => 'unix_timestamp',
            }
          }
          expect(json(when:now)).to eq("{\"when\":#{now.to_i}}")
        end

        it 'raises an error when the timestamp format is not specified' do
          now = Time.now
          rules['members'] = {
            'when' => {
              'type' => 'timestamp',
            }
          }
          expect { json(when:now) }.to raise_error(/invalid timestamp/)
        end

        it 'serializes blobs as base64 strings' do
          rules['members'] = {
            'data' => { 'type' => 'blob' }
          }
          expect(json(data:'hello')).to eq('{"data":"aGVsbG8="}')
        end

      end
    end
  end
end
