require 'spec_helper'

module Seahorse
  module Client
    module Http
      describe Headers do

        let(:headers) { Headers.new }

        it 'provides indifferent access to symbolized keys' do
          headers[:key] = 'value'
          expect(headers[:key]).to eq('value')
          expect(headers['key']).to eq('value')
        end

        it 'provides indifferent access to string keys' do
          headers['key'] = 'value'
          expect(headers['key']).to eq('value')
          expect(headers[:key]).to eq('value')
        end

        it 'provides case-insenitive access to keys' do
          headers['Content-Length'] = 100
          expect(headers['content-length']).to eq('100')
        end

        it 'stringifies values' do
          headers['key'] = 123
          expect(headers['key']).to eq('123')
        end

        it 'can be seeded by the constructor' do
          hash = { 'abc' => '123' }
          headers = Headers.new(hash)
          expect(headers.to_hash).to eq(hash)
        end

        describe '#to_hash' do

          it 'returns a regular hash' do
            headers[:abc] = 'xyz'
            expect(headers.to_hash).to eq({ 'abc' => 'xyz' })
          end

          it 'is aliased as #to_h' do
            headers[:abc] = 'xyz'
            expect(headers.to_h).to eq({ 'abc' => 'xyz' })
          end

          it 'returns a new hash that protects internal state' do
            headers['abc'] = 'xyz'
            headers.to_hash['abc'] = 'mno'
            expect(headers['abc']).to eq('xyz')
          end

        end

        describe '#update' do

          it 'accepts a hash, updating self' do
            headers.update(:abc => 123, 'xyz' => '234')
            expect(headers['abc']).to eq('123')
            expect(headers['xyz']).to eq('234')
          end

        end

        describe '#each' do

          it 'is enumerable' do
            expect(headers).to be_kind_of(Enumerable)
          end

          it 'returns nil if a block is given' do
            ret = headers.each {}
            expect(ret).to eq(nil)
          end

          it 'returns an Enumerator if a block is not given' do
            expect(headers.each).to be_kind_of(Enumerator)
          end

          it 'yields headers keys and values' do
            headers['key1'] = 'value1'
            headers['key2'] = 'value2'
            yielded = []
            headers.each do |key, value|
              yielded << [key, value]
            end
            expect(yielded.sort_by(&:first)).to eq([
              ['key1', 'value1'],
              ['key2', 'value2'],
            ])
          end

          it 'is aliased as #each_pair' do
            headers['key1'] = 'value1'
            headers['key2'] = 'value2'
            yielded = []
            headers.each_pair do |key, value|
              yielded << [key, value]
            end
            expect(yielded.sort_by(&:first)).to eq([
              ['key1', 'value1'],
              ['key2', 'value2'],
            ])
          end

        end

        describe '#delete' do

          it 'deletes a header by key' do
            headers['key1'] = 'value1'
            headers.delete('key1')
            expect(headers).to_not have_key('key1')
          end

          it 'deletes header with a symbol key' do
            headers['key1'] = 'value'
            headers.delete(:key1)
            expect(headers).to_not have_key('key1')
            expect(headers).to_not have_key(:key1)
          end

          it 'deletes headers ignoring case' do
            headers['key1'] = 'value'
            headers['Key2'] = 'value'
            headers.delete('Key1')
            headers.delete('key2')
            expect(headers).to_not have_key('key1')
            expect(headers).to_not have_key('Key1')
            expect(headers).to_not have_key('key2')
            expect(headers).to_not have_key('Key2')
          end

        end

        describe '#keys' do

          it 'returns the keys' do
            headers['key1'] = 'value1'
            headers['key2'] = 'value2'
            expect(headers.keys).to eql(['key1', 'key2'])
          end

        end

        describe '#values' do

          it 'returns the values' do
            headers['key1'] = 'value1'
            headers['key2'] = 'value2'
            expect(headers.values).to eql(['value1', 'value2'])
          end

        end

        describe '#values_at' do

          it 'returns the values for the given keys' do
            headers['key1'] = 'v1'
            headers['key2'] = 'v2'
            expect(headers.values_at('key2', 'key1')).to eql(['v2', 'v1'])
          end

        end

        describe '#key?' do

          it 'returns true if the header has been set' do
            headers['foo'] = 'bar'
            expect(headers.key?('foo')).to eq(true)
          end

          it 'treats symbols indifferently' do
            headers['foo'] = 'bar'
            expect(headers.key?(:foo)).to be(true)
          end

          it 'treats strings case insensitively' do
            headers['foo'] = 'bar'
            expect(headers.key?('Foo')).to be(true)
          end

          it 'returns false if the header has not been set' do
            expect(headers.key?('foo')).to be(false)
          end

          it 'is aliased as #has_key?' do
            headers['foo'] = 'bar'
            expect(headers.has_key?('foo')).to be(true)
          end

          it 'is aliased as #include?' do
            headers['foo'] = 'bar'
            expect(headers.include?('foo')).to be(true)
          end

        end

        describe '#inspect' do

          it 'inspects like a normal hash' do
            headers['foo'] = 'bar'
            expect(headers.inspect).to eq({'foo' => 'bar'}.inspect)
          end

        end
      end
    end
  end
end
