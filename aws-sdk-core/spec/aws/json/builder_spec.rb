require 'spec_helper'

module Aws
  module Json
    describe Builder do

      let(:members) { {} }

      def json(params)
        shape = Seahorse::Model::Shapes::Structure.new('members' => members)
        Builder.new.to_json(shape, params)
      end

      describe 'structures' do

        it 'returns an empty xml doc when there are no params' do
          expect(json({})).to eq('{}')
        end

        it 'omits params that are not in the rules' do
          expect(json(abc: 'xyz')).to eq('{}')
        end

        it 'observes serialized name properties' do
          members['Name'] = {
            'type' => 'string',
            'locationName' => 'FullName'
          }
          expect(json(name: 'John Doe')).to eq('{"FullName":"John Doe"}')
        end

        it 'serializes nested structures' do
          members['Abc'] = {
            'type' => 'structure',
            'members' => {
              'Mno' => { 'type' => 'string', 'locationName' => 'MNO' }
            }
          }
          expect(json(abc: { mno: 'xyz' })).to eq('{"Abc":{"MNO":"xyz"}}')
        end

        it 'does not serialize nil members' do
          members['Cfg'] = {
            'type' => 'structure',
            'members' => {
              'Data' => { 'type' => 'blob' },
            }
          }
          expect(json(cfg: { data: nil })).to eq('{"Cfg":{}}')
        end

      end

      describe 'lists' do

        it 'serializes lists' do
          members['Items'] = {
            'type' => 'list',
            'member' => { 'type' => 'string' }
          }
          expect(json(items: %w(abc xyz))).to eq('{"Items":["abc","xyz"]}')
        end

        it 'lists of complex shapes' do
          members['Abc'] = {
            'type' => 'list',
            'member' => {
              'type' => 'structure',
              'members' => {
                'Mno' => { 'type' => 'string', 'locationName' => 'MNO' }
              }
            }
          }
          expect(json(abc: [{mno:'xyz'}])).to eq('{"Abc":[{"MNO":"xyz"}]}')
        end

      end

      describe 'maps' do

        it 'accepts an arbitrary hash of values' do
          members['Attrs'] = {
            'type' => 'map',
            'key' => { 'type' => 'string' },
            'value' => { 'type' => 'string' }
          }
          params = { attrs: { 'Size' => 'large', 'Color' => 'red' } }
          expect(json(params)).to eq('{"Attrs":{"Size":"large","Color":"red"}}')
        end

        it 'supports complex hash values' do
          members['People'] = {
            'type' => 'map',
            'key' => { 'type' => 'string' },
            'value' => {
              'type' => 'structure',
              'members' => {
                'Age' => { 'type' => 'integer', 'locationName' => 'AGE' }
              }
            }
          }
          params = { people: { 'John' => { age: 40 } } }
          expect(json(params)).to eq('{"People":{"John":{"AGE":40}}}')
        end

      end

      describe 'scalars' do

        it 'serializes integers' do
          members['Count'] = { 'type' => 'integer' }
          expect(json(count: 123)).to eq('{"Count":123}')
        end

        it 'serializes floats' do
          members['Price'] = { 'type' => 'float' }
          expect(json(price: 12.34)).to eq('{"Price":12.34}')
        end

        it 'serializes booleans' do
          members['Hot'] = { 'type' => 'boolean' }
          members['Cold'] = { 'type' => 'boolean' }
          expect(json(hot:true, cold:false)).to eq('{"Hot":true,"Cold":false}')
        end

        it 'serializes timestamps' do
          now = Time.now
          members['When'] = { 'type' => 'timestamp' }
          expect(json(when:now)).to eq("{\"When\":#{now.utc.to_i}}")
        end

        it 'serializes iso8601 timestamps' do
          now = Time.now
          members['When'] = {
            'type' => 'timestamp',
            'timestampFormat' => 'iso8601'
          }
          expect(json(when:now)).to eq("{\"When\":\"#{now.utc.iso8601}\"}")
        end

        it 'serializes rfc822 timestamps' do
          now = Time.now
          members['When'] = {
            'type' => 'timestamp',
            'timestampFormat' => 'rfc822'
          }
          expect(json(when:now)).to eq("{\"When\":\"#{now.utc.rfc822}\"}")
        end

        it 'serializes unix timestamps' do
          now = Time.now
          members['When'] = {
            'type' => 'timestamp',
            'timestampFormat' => 'unixTimestamp'
          }
          expect(json(when:now)).to eq("{\"When\":#{now.utc.to_i}}")
        end

        it 'raises an error for unknown timestamp formats' do
          members['When'] = {
            'type' => 'timestamp',
            'timestampFormat' => 'bogus'
          }
          expect {
            json(when:Time.now)
          }.to raise_error(ArgumentError, 'invalid timestamp format "bogus"')
        end

        it 'serializes blobs as base64 strings' do
          members['data'] = { 'type' => 'blob' }
          expect(json(data:StringIO.new('hello'))).to eq('{"data":"aGVsbG8="}')
        end

      end

      # All of the previous tests in this spec file test given a root
      # level structure. JSON allows for root level arrays.
      it 'supports serializing an array as the root element' do
        list_shape = Seahorse::Model::Shapes::List.new(
          'member' => { 'type' => 'string' }
        )
        json = Builder.new.to_json(list_shape, %w(a b c))
        expect(json).to eq('["a","b","c"]')
      end

    end
  end
end
