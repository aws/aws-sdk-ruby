require 'spec_helper'

module Seahorse
  module Model
    describe Operations do
      def hash(raw = {})
        Operations.new(raw)
      end

      describe '#initialize' do
        it 'clones raw data' do
          hash = {'a' => {'name' => 'op'}}
          lazy = Operations.new(hash)
          lazy.load!
          expect(hash).to eq 'a' => {'name' => 'op'}
        end
      end

      describe '#keys' do
        it 'returns keys of unloaded objects' do
          hash = {'a' => {'name' => 'op1'}, 'b' => {'name' => 'op2'}}
          lazy = Operations.new(hash)
          lazy['a'] # hydrate a but not b
          expect(lazy.keys).to eq %w(a b)
        end
      end

      describe '#[]' do
        it 'parses data when accessed' do
          ast = hash('operation' => {'name' => 'operation'})
          op = ast['operation']
          expect(op.name).to eq('operation')
        end

        it 'caches data when accessed first time' do
          ast = hash('operation' => {'name' => 'operation'})
          expect(ast['operation']).to be(ast['operation'])
        end

        it 'allows access by Symbol name' do
          ast = hash('operation' => {'name' => 'operation'})
          expect(ast[:operation].name).to eq('operation')
        end
      end

      describe '#[]=' do
        it 'sets value and removes raw inner data' do
          ast = hash
          ast[:operation] = 'VALUE'
          expect(ast[:operation]).to eq 'VALUE'
        end
      end

      describe '#load!' do
        it 'loads all data' do
          ast = hash('op1' => {'name' => 'op1'}, 'op2' => {'name' => 'op2'})
          ast.load!
          expect(ast['op1'].name).to eq('op1')
          expect(ast['op2'].name).to eq('op2')
        end
      end
    end
  end
end
