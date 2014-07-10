require 'spec_helper'

module Seahorse
  module Model
    describe Api do

      describe '#definition' do

        it 'returns an empty hash by default' do
          expect(Api.new.definition).to eq({})
        end

        it 'returns the definitions given the constructor' do
          definition = { 'operations' => {} }
          api = Api.new(definition)
          expect(api.definition).to be(definition)
        end

      end

      describe '#shape_map' do

        it 'defaults to an empty shape map' do
          expect(Api.new.shape_map.definitions).to eq({})
        end

        it 'initializes the shape map with the given shape definitions' do
          shape_definitions = { 'Name' => { 'type' => 'string' }}
          api = Api.new('shapes' => shape_definitions)
          expect(api.shape_map.definitions).to be(shape_definitions)
        end

      end

      describe '#version' do

        it 'defaults to nil' do
          expect(Api.new.version).to be(nil)
        end

        it 'returns the value given in the definition' do
          api = Api.new('metadata' => { 'apiVersion' => '1'})
          expect(api.version).to eq('1')
        end

      end

      describe '#documentation' do

        it 'defaults to nil' do
          expect(Api.new.documentation).to be(nil)
        end

        it 'returns the value given in the definition' do
          api = Api.new('documentation' => 'docs')
          expect(api.documentation).to eq('docs')
        end

      end

      describe '#metadata' do

        it 'returns the value given in the definition' do
          metadata = { 'format' => 'query' }
          api = Api.new('metadata' => metadata)
          expect(api.metadata('format')).to eq('query')
        end

      end

      describe '#operation' do

        let(:definition) {{
          'operations' => {
            'Operation1' => { 'documentation' => 'first' },
            'Operation2' => { 'documentation' => 'second' },
          }
        }}

        it 'returns an operation' do
          api = Api.new(definition)
          expect(api.operation('operation_1')).to be_kind_of(Operation)
        end

        it 'returns an operation built from the definition' do
          api = Api.new(definition)
          expect(api.operation(:operation_1).documentation).to eq('first')
        end

        it 'returns the same operation object when called multiple times' do
          api = Api.new(definition)
          o1 = api.operation('operation_1')
          o2 = api.operation('operation_1')
          expect(o1).to be(o2)
        end

        it 'accepts operation names as symbols' do
          api = Api.new(definition)
          o1 = api.operation(:operation_1)
          o2 = api.operation('operation_1')
          expect(o1).to be(o2)
        end

        it 'raises an ArgumentError for an undefined operation' do
          api = Api.new(definition)
          expect {
            api.operation('operation3')
          }.to raise_error(ArgumentError, "unknown operation :operation3")
        end

      end

      describe '#operation_names' do

        it 'returns an array of symbolized operation names' do
          api = Api.new('operations' => {
            'Operation1' => {},
            'Operation2' => {},
          })
          expect(api.operation_names).to eq([:operation_1, :operation_2])
        end

      end

      describe '#operations' do

        it 'yields operation names and operation objects' do
          api = Api.new('operations' => {
            'OperationName' => {},
            'OperationName2' => {},
          })
          yielded = []
          api.operations.each do |operation_name, operation|
            yielded << [operation_name, operation]
          end
          expect(yielded).to eq([
            [:operation_name, api.operation('operation_name')],
            [:operation_name_2, api.operation('operation_name_2')],
          ])
        end

      end

      describe '#inspect' do

        it 'returns a simplified inspect string' do
          api = Api.new('metadata' => { 'apiVersion' => '1'})
          expect(api.inspect).to eq('#<Seahorse::Model::Api version="1">')
        end

      end
    end
  end
end
