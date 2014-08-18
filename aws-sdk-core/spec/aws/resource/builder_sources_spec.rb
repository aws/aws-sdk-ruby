require 'spec_helper'

module Aws
  module Resource
    module BuilderSources
      describe Base do

        describe '#source' do

          it 'returns the given source' do
            source = Base.new('source-expression', :target)
            expect(source.source).to eq('source-expression')
          end

        end

        describe '#target' do

          it 'returns the target' do
            source = Base.new('source-expression', :target)
            expect(source.target).to eq(:target)
          end

          it 'symbolizes the target' do
            source = Base.new('source-expression', 'target')
            expect(source.target).to eq(:target)
          end

        end

        describe '#plural?' do

          it 'returns true if the source expression has an expansion' do
            source = Base.new('source[]', :target)
            expect(source.plural?).to be(true)
          end

          it 'returns false if the source expression has no expansion' do
            source = Base.new('source', :target)
            expect(source.plural?).to be(false)
          end

        end

        describe '#extract' do

          it 'is not defined in the base class' do
            source = Base.new('source', :target)
            expect {
              source.extract({})
            }.to raise_error(NotImplementedError)
          end

        end

      end

      describe Argument do

        it 'is a BuilderSources::Base' do
          expect(described_class.ancestors).to include(Base)
        end

        it 'extracts the named argument' do
          source = described_class.new('source', 'target')
          expect(source.extract(argument:'value')).to eq('value')
        end

        it 'raises an error if :arugment is not given' do
          source = described_class.new('source', 'target')
          msg = 'missing required option :argument'
          expect {
            source.extract({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end

      describe Identifier do

        it 'is a BuilderSources::Base' do
          expect(described_class.ancestors).to include(Base)
        end

        it 'extracts an identifier from the given resource' do
          resource = double('resource', identifiers: {name:'foo'})
          source = described_class.new('name', 'target')
          expect(source.extract(resource:resource)).to eq('foo')
        end

        it 'raises an error if a resource is not given' do
          source = described_class.new('source', 'target')
          msg = 'missing required option :resource'
          expect {
            source.extract({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end

      describe DataMember do

        it 'is a BuilderSources::Base' do
          expect(described_class.ancestors).to include(Base)
        end

        it 'extracts a data member from the given resource' do
          data = { 'nested' => { 'data' => 'value' }}
          resource = double('resource', data:data)
          source = described_class.new('nested.data', 'target')
          expect(source.extract(resource:resource)).to eq('value')
        end

        it 'raises an error if a resource is not given' do
          source = described_class.new('source', 'target')
          msg = 'missing required option :resource'
          expect {
            source.extract({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end

      describe RequestParameter do

        it 'is a BuilderSources::Base' do
          expect(described_class.ancestors).to include(Base)
        end

        it 'extracts a request parameter from the response context' do
          context = double('request-context', params: { key:'value' })
          response = double('response', context: context)
          source = described_class.new('key', 'target')
          expect(source.extract(response:response)).to eq('value')
        end

        it 'raises an error if a response is not given' do
          source = described_class.new('source', 'target')
          msg = 'missing required option :response'
          expect {
            source.extract({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end

      describe ResponsePath do

        it 'is a BuilderSources::Base' do
          expect(described_class.ancestors).to include(Base)
        end

        it 'extracts a value from the response data' do
          data = { 'nested' => { 'data' => 'value' }}
          response = double('response', data: data)
          source = described_class.new('nested.data', 'target')
          expect(source.extract(response:response)).to eq('value')
        end

        it 'extracts a value from the response data' do
          data = { 'members' => [{'name' => 'name1'}, {'name' => 'name2'}]}
          response = double('response', data: data)
          source = described_class.new('members[].name', 'target')
          expect(source.extract(response:response)).to eq(%w(name1 name2))
          expect(source.plural?).to be(true)
        end

        it 'raises an error if a response is not given' do
          source = described_class.new('source', 'target')
          msg = 'missing required option :response'
          expect {
            source.extract({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end
    end
  end
end
