require 'spec_helper'

module Aws
  module Resource
    describe Builder do

      # A builder object construct a resource object from the context of
      # a different resource object.  They do not need to be the same
      # resource class.  The new resource object inherits a client object
      # from the parent resource object.

      let(:client) { double('client') }

      let(:parent) { double('resource-parent-object', client:client) }

      let(:resource_class) { Resource.define(double('client-class')) }

      context '#resource_class' do

        it 'returns the value given the constructor' do
          builder = Builder.new(resource_class:resource_class)
          expect(builder.resource_class).to be(resource_class)
        end

        it 'is required by by the constructor' do
          msg = 'missing required option :resource_class'
          expect {
            Builder.new({})
          }.to raise_error(Errors::DefinitionError, msg)
        end

      end

      context '#sources' do

        it 'returns an array of builder sources' do
          sources = [
            BuilderSources::Identifier.new('source', 'target')
          ]
          builder = Builder.new(resource_class:resource_class, sources:sources)
          expect(builder.sources).to be(sources)
        end

      end

      context '#plural?' do

        it 'returns true if any of the sources are plural' do
          builder = Builder.new(
            resource_class: resource_class,
            sources: [
              BuilderSources::ResponsePath.new('names[]', 'name')
            ]
          )
          expect(builder.plural?).to be(true)
        end

        it 'returns false if none of the sources are plural' do
          builder = Builder.new(
            resource_class: resource_class,
            sources: [
              BuilderSources::ResponsePath.new('name', 'name')
            ]
          )
          expect(builder.plural?).to be(false)
        end

      end

      context '#build' do

        it 'constructs a resource object of the given class' do
          builder = Builder.new(resource_class:resource_class)
          resource = builder.build(resource:parent)
          expect(resource).to be_kind_of(resource_class)
        end

        it 'extracts resource identifiers from mixed sources' do
          parent = double('resource-parent',
            identifiers: { id: 'parent-id' },
            data: { 'member' => 'parent-member' },
            client: double('client'),
          )
          response = double('response',
            data: { 'path' => 'response-path'},
            context: double('response-context', params: { param:'request-param' }),
          )
          resource = double('resource')
          expect(resource_class).to receive(:new).with(
            parent_id: 'parent-id',
            parent_member: 'parent-member',
            request_param: 'request-param',
            response_path: 'response-path',
            client: parent.client,
          ).and_return(resource)
          builder = Builder.new(resource_class:resource_class, sources:[
            BuilderSources::Identifier.new('id', 'parent_id'),
            BuilderSources::DataMember.new('member', 'parent_member'),
            BuilderSources::RequestParameter.new('param', 'request_param'),
            BuilderSources::ResponsePath.new('path', 'response_path'),
          ])
          expect(builder.build(resource:parent,response:response)).to be(resource)
        end

        it 'constructs multiple resources if any of its sources are plural' do
          parent = double('resource-parent',
            data: { 'ids' => %w(id1 id2) },
            client: double('client')
          )
          resource_class = Resource.define(double('client-class'), [:id])
          builder = Builder.new(resource_class:resource_class, sources:[
            BuilderSources::DataMember.new('ids[]', 'id'),
          ])
          result = builder.build(resource:parent)
          expect(result).to be_an(Array)
          expect(result.size).to eq(2)
          expect(result[0]).to be_kind_of(resource_class)
          expect(result[1]).to be_kind_of(resource_class)
          expect(result[0].id).to eq('id1')
          expect(result[1].id).to eq('id2')
        end

        it 'constructs then yield resources one at a time if a block is given' do
          parent = double('resource-parent',
            data: { 'ids' => %w(id1 id2) },
            client: double('client')
          )
          resource_class = Resource.define(double('client-class'), [:id])
          expect(resource_class).to receive(:new).exactly(1).times
          builder = Builder.new(resource_class:resource_class, sources:[
            BuilderSources::DataMember.new('ids[]', 'id'),
          ])
          builder.build(resource:parent) { |resource| break }
        end

      end
    end
  end
end
