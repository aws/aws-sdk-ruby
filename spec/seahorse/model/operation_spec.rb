require 'spec_helper'

module Seahorse
  module Model
    describe Operation do
      let(:operation_hash) do
        {
          'name' => 'OperationName',
          'documentation' => 'Docstring',
          'http_method' => 'POST',
          'http_path' => '/path/to/operation',
          'input' => {
            'type' => 'input',
            'members' => {
              'property' => { 'type' => 'string' }
            }
          },
          'errors' => [
            {
              'type' => 'string'
            },
            {
              'type' => 'integer'
            }
          ]
        }
      end

      let(:operation) { Operation.from_hash(operation_hash) }

      describe 'from_hash' do
        it 'loads from a hash' do
          expect(operation.name).to eq 'OperationName'
          expect(operation.documentation).to eq 'Docstring'
          expect(operation.http_path).to eq '/path/to/operation'
          expect(operation.http_method).to eq 'POST'
          expect(operation.input).to be_instance_of Shapes::InputShape
          expect(operation.output).to be_instance_of Shapes::OutputShape
          expect(operation.errors[0]).to be_instance_of Shapes::StringShape
        end

        it 'serializes to a hash' do
          expect(operation.to_hash).to eq(operation_hash)
        end
      end
    end
  end
end
