require_relative '../../spec_helper'

module Seahorse
  module Model
    describe Api do
      describe '#version' do

        it 'defaults to nil' do
          expect(Api.new.version).to be(nil)
        end

        it 'can be set' do
          api = Api.new
          api.version = '2015-01-01'
          expect(api.version).to eq('2015-01-01')
        end

      end

      describe '#metadata' do

        it 'defaults to {}' do
          expect(Api.new.metadata).to eq({})
        end

        it 'can be populated' do
          api = Api.new
          api.metadata['key'] = 'value'
          expect(api.metadata['key']).to eq('value')
        end

      end

      describe '#authorizers' do

        it 'provides an enumerator for authorizers' do
          authorizer = double('authorizer')
          api = Api.new
          api.add_authorizer('name', authorizer)
          expect(api.authorizers).to be_kind_of(Enumerator)
          expect(api.authorizers.to_a).to eq([[:name, authorizer]])
        end

        it 'provides authorizer names' do
          api = Api.new
          api.add_authorizer('a1', double('authorizer'))
          api.add_authorizer('a2', double('authorizer'))
          expect(api.authorizer_names).to eq([:a1, :a2])
        end

        it 'provides an authorizer getter' do
          authorizer = double('authorizer')
          api = Api.new
          api.add_authorizer(:name, authorizer)
          expect(api.authorizer(:name)).to be(authorizer)
        end

        it 'provides indifferent string/symbol access to authorizers by name' do
          authorizer1 = double('authorizer-1')
          authorizer2 = double('authorizer-2')
          api = Api.new
          api.add_authorizer(:name, authorizer1)
          expect(api.authorizer('name')).to be(authorizer1)
          api.add_authorizer('name', authorizer2)
          expect(api.authorizer(:name)).to be(authorizer2)
        end

      end

      it 'provides an enumerator for operations' do
        operation = double('operation')
        api = Api.new
        api.add_operation('name', operation)
        expect(api.operations).to be_kind_of(Enumerator)
        expect(api.operations.to_a).to eq([[:name, operation]])
      end

      it 'provides operation names' do
        api = Api.new
        api.add_operation('op1', double('operation'))
        api.add_operation('op2', double('operation'))
        expect(api.operation_names).to eq([:op1, :op2])
      end

      it 'provides an operation getter' do
        operation = double('operation')
        api = Api.new
        api.add_operation(:name, operation)
        expect(api.operation(:name)).to be(operation)
      end

      it 'provides indifferent string/symbol access to operations by name' do
        operation1 = double('operation-1')
        operation2 = double('operation-2')
        api = Api.new
        api.add_operation(:name, operation1)
        expect(api.operation('name')).to be(operation1)
        api.add_operation('name', operation2)
        expect(api.operation(:name)).to be(operation2)
      end
    end
  end
end
