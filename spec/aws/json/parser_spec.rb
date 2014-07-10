require 'spec_helper'

module Aws
  module Json
    describe Parser do

      let(:members) { {} }

      def parse(json)
        shape = Seahorse::Model::Shapes::Structure.new('members' => members)
        Parser.new.parse(shape, json).to_hash
      end

      it 'returns an empty hash when the JSON is {}' do
        expect(parse('{}')).to eq({})
      end

      describe 'structures' do

        it 'symbolizes structure members' do
          members['Name'] = { 'type' => 'string' }
          json = '{"Name":"John Doe"}'
          expect(parse(json)).to eq(name: 'John Doe')
        end

        it 'parses members using their serialized name' do
          members['First'] = {
            'type' => 'string',
            'locationName' => 'FirstName'
          }
          members['Last'] = {
            'type' => 'string',
            'locationName' => 'LastName'
          }
          json = '{"FirstName":"John", "LastName":"Doe"}'
          expect(parse(json)).to eq(first: 'John', last: 'Doe')
        end

        it 'ignores non-described values' do
          members['Foo'] = { 'type' => 'string' }
          json = '{"Foo":"bar", "Abc":"xyz"}'
          expect(parse(json)).to eq(foo: 'bar')
        end

        it 'skips over null values' do
          members['Base'] = {
            'type' => 'structure',
            'members' => {
              'Nested' => {
                'type' => 'structure',
                'members' => {
                  'Leaf' => { 'type' => 'string' }
                }
              }
            }
          }
          json = '{"Base":{"Nested":null}}'
          expect(parse(json)).to eq(base: {})
        end

      end

      describe 'lists' do

        it 'returns nil for lists missing in the json' do
          members['Values'] = {
            'type' => 'list',
            'member' => { 'type' => 'string' }
          }
          json = '{}'
          expect(parse(json)[:values]).to be(nil)
        end

        it 'parses lists' do
          members['Values'] = {
            'type' => 'list',
            'member' => { 'type' => 'string' }
          }
          json = '{"Values":["abc", "mno", "xyz"]}'
          expect(parse(json)).to eq(values: %w(abc mno xyz))
        end

        it 'parses lists of complex members' do
          members['Values'] = {
            'type' => 'list',
            'member' => {
              'type' => 'structure',
              'members' => {
                'Name' => { 'type' => 'string' }
              }
            }
          }
          json = '{"Values":[{"Name":"abc"},{"Name":"xyz"}]}'
          expect(parse(json)).to eq(values: [{name:'abc'}, {name:'xyz'}])
        end

      end

      describe 'maps' do

        it 'parses maps as hashes (without symbolizing keys' do
          members['Attributes'] = {
            'type' => 'map',
            'key' => { 'type' => 'string' },
            'value' => { 'type' => 'string' }
          }
          json = '{"Attributes":{"Size":"large","Color":"red"}}'
          expect(parse(json)).to eq(attributes: {
            'Size' => 'large',
            'Color' => 'red'
          })
        end

      end

      describe 'booleans' do

        it 'converts true/false booleans' do
          members['Hot'] = { 'type' => 'boolean' }
          members['Cold'] = { 'type' => 'boolean' }
          json = '{"Hot":true,"Cold":false}'
          expect(parse(json)).to eq(hot: true, cold: false)
        end

      end

      describe 'timestamps' do

        before(:each) do
          members['CreatedAt'] = {
            'type' => 'timestamp',
            'locationName' => 'Created',
          }
        end

        it 'can parse unix timestamps' do
          timestamp = 1349908100
          time = Time.at(timestamp)
          json = "{\"Created\":#{timestamp}}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'can parse unix timestamps expressed as floats' do
          timestamp = 1349908100.123
          time = Time.at(timestamp)
          json = "{\"Created\":#{timestamp}}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'can parse iso8601 strings' do
          timestamp = '2012-09-10T15:47:10.001Z'
          time = Time.parse(timestamp).to_time.utc
          json = "{\"Created\":\"#{timestamp}\"}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'can parse rfc822 strings' do
          timestamp = 'Wed, 10 Oct 2012 15:59:55 UTC'
          time = Time.parse(timestamp).to_time.utc
          json = "{\"Created\":\"#{timestamp}\"}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

      end

      describe 'integers' do

        it 'parses integers' do
          members['count'] = { 'type' => 'integer' }
          json = '{"count":123}'
          expect(parse(json)).to eq(count: 123)
        end

      end

      describe 'floats' do

        it 'parses floats' do
          members['value'] = { 'type' => 'float' }
          json = '{"value":12.34}'
          expect(parse(json)).to eq(value: 12.34)
        end

      end

      describe 'blobs' do

        it 'base64 decodes blobs' do
          members['data'] = { 'type' => 'blob' }
          json = '{"data":"aGVsbG8="}'
          expect(parse(json)).to eq(data: 'hello')
        end

      end

      describe 'parsing errors' do

        it 'does not trap xml parsing errors' do
          json = '{"abc'
          expect { parse(json) }.to raise_error
        end

      end
    end
  end
end
