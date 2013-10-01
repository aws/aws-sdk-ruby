require 'spec_helper'

module Seahorse
  module Model
    describe Api do
      let(:operation_hash) do
        {
          'name' => 'OperationName',
          'http_method' => 'POST',
          'http_path' => '/path/to/operation',
          'input' => {
            'type' => 'input',
            'members' => {
              'property' => { 'type' => 'string' }
            }
          }
        }
      end

      let(:api_hash) do
        {
          'metadata' => {
            'key' => 'value'
          },
          'documentation' => 'Docstring',
          'operations' => {
            'operation_name' => operation_hash
          }
        }
      end

      let(:api) { Api.from_hash(api_hash) }

      describe 'from_hash' do
        it 'loads from a hash' do
          expect(api.metadata['key']).to eq 'value'
          expect(api.documentation).to eq 'Docstring'
          expect(api.operations[:operation_name].to_hash).to eq operation_hash
          expect(api.operations['operation_name'].to_hash).to eq operation_hash
        end

        it 'underscore cases operation names' do
          api = Api.from_hash 'operations' => { 'OperationName' => {} }
          expect(api.operations[:operation_name]).to be_instance_of Operation
        end
      end

      describe '#to_hash' do
        it 'serializes to a hash' do
          expect(api.to_hash).to eq(api_hash)
        end
      end

      describe '#validate!' do
        it 'returns true when an API is valid' do
          expect(api.validate!).to be(true)
        end

        it 'fails to validate operations when an invalid operation is loaded' do
          api = Api.from_hash 'operations' => {
            'operation_name' => {
              'INVALID_KEY' => 'value'
            }
          }

          expect { api.validate! }.to raise_error(
            RuntimeError, /Unrecognized properties/)
        end
      end
    end
  end
end
