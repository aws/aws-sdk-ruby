require 'spec_helper'

module Aws
  module Resources
    module BuilderSources
      describe Source do

        let(:klass) { Class.new { include Source } }

        describe '#source' do

          it 'returns the given source' do
            source = klass.new({
              source: 'source-expression',
              target: 'target'
            }).source
            expect(source).to eq('source-expression')
          end

        end

        describe '#target' do

          it 'returns the target' do
            target = klass.new({
              source: 'source-expression',
              target: 'target'
            }).target
            expect(target).to eq(:target)
          end

        end

        describe '#plural?' do

          it 'returns true if the source expression has an expansion' do
            plural = klass.new({
              source: 'plura.path[].expression',
              target: 'target'
            }).plural?
            expect(plural).to be(true)
          end

          it 'returns false if the source expression has no expansion' do
            plural = klass.new({
              source: 'source',
              target: 'target',
            }).plural?
            expect(plural).to be(false)
          end

          it 'returns false if the source is nil' do
            plural = klass.new({
              source: nil,
              target: 'target',
            }).plural?
            expect(plural).to be(false)
          end

        end

      end

      describe Argument do

        it 'is a Source' do
          expect(described_class.ancestors).to include(Source)
        end

        it 'extracts the named argument' do
          source = described_class.new(target:'target')
          expect(source.extract(args:['value'])).to eq('value')
        end

        it 'returns nil when the argument is not present' do
          source = described_class.new(target:'target')
          expect(source.extract({})).to be(nil)
        end

      end

      describe Identifier do

        it 'is a Source' do
          expect(described_class.ancestors).to include(Source)
        end

        it 'extracts an identifier from the given resource' do
          resource = double('resource', name:'foo')
          source = described_class.new(source:'name', target:'target')
          expect(source.extract(resource:resource)).to eq('foo')
        end

      end

      describe DataMember do

        it 'is a Source' do
          expect(described_class.ancestors).to include(Source)
        end

        it 'extracts a data member from the given resource' do
          data = { 'nested' => { 'data' => 'value' }}
          resource = double('resource', data:data)
          source = described_class.new(source:'nested.data', target:'target')
          expect(source.extract(resource:resource)).to eq('value')
        end

      end

      describe RequestParameter do

        it 'is a Source' do
          expect(described_class.ancestors).to include(Source)
        end

        it 'extracts a request parameter from the response context' do
          context = double('request-context', params: { key:'value' })
          response = double('response', context: context)
          source = described_class.new(source:'key', target:'target')
          expect(source.extract(response:response)).to eq('value')
        end

      end

      describe ResponsePath do

        it 'is a Source' do
          expect(described_class.ancestors).to include(Source)
        end

        it 'extracts a value from the response data' do
          data = { 'nested' => { 'data' => 'value' }}
          response = double('response', data: data)
          source = described_class.new(source:'nested.data', target:'target')
          expect(source.extract(response:response)).to eq('value')
        end

        it 'extracts a value from the response data' do
          data = { 'members' => [{'name' => 'name1'}, {'name' => 'name2'}]}
          response = double('response', data: data)
          source = described_class.new(source:'members[].name', target:'target')
          expect(source.extract(response:response)).to eq(%w(name1 name2))
          expect(source.plural?).to be(true)
        end

      end
    end
  end
end
