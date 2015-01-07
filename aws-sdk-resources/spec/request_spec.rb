require 'spec_helper'

module Aws
  module Resources
    describe Request do

      describe '#method_name' do

        it 'accepts a method name' do
          expect(Request.new(method_name:'foo').method_name).to eq('foo')
        end

      end

      describe '#params' do

        it 'defaults to an empty array' do
          expect(Request.new(method_name:'method').params).to eq([])
        end

        it 'returns the params given to the constructor' do
          params = double('param-list')
          request = Request.new(method_name:'method', params:params)
          expect(request.params).to be(params)
        end

      end

      describe '#call' do

        let(:client) { double('resource-client') }

        let(:resource) { double('resource', client:client) }

        let(:params) { [] }

        let(:request) { Request.new(method_name:'method_name', params:params) }

        it 'calls the method name on the given resource client' do
          expect(client).to receive(:method_name)
          request.call(resource:resource)
        end

        it 'passes along params to the resource client' do
          params = { foo: 'bar' }
          expect(client).to receive(:method_name).with(params)
          request.call(resource:resource, args:[params])
        end

        it 'returns the client response' do
          response = double('client-response')
          allow(client).to receive(:method_name).and_return(response)
          expect(request.call(resource:resource)).to be(response)
        end

        it 'merges request params with given params before calling client method' do
          request = Request.new(method_name:'method_name', params: [
            RequestParams::Literal.new(value:'John Doe', target:'person.name'),
            RequestParams::Literal.new(value:40, target:'person.age'),
          ])
          expect(client).to receive(:method_name).
            with(person:{name:'John Doe', age:40, aka:'johndoe'})
          request.call(resource:resource, args:[{person: { aka:'johndoe' }}])
        end

        it 'deep merges params with incoming params' do
          request = Request.new(method_name:'method_name', params: [
            RequestParams::Literal.new(value:'n1', target:'filters[0].name'),
            RequestParams::Literal.new(value:'v1', target:'filters[0].values[]'),
            RequestParams::Literal.new(value:'v2', target:'filters[0].values[]'),
            RequestParams::Literal.new(value:'n2', target:'filters[1].name'),
            RequestParams::Literal.new(value:'v3', target:'filters[1].values[]'),
            RequestParams::Literal.new(value:'v4', target:'filters[1].values[]'),
          ])
          expect(client).to receive(:method_name).with(filters:[
            { name:'n1', values: %w(v1 v2) },
            { name:'n2', values: %w(v3 v4) },
            { name:'n3', values: %w(v5 v6) },
          ])
          request.call(resource:resource, args:[{
            filters:[{name:'n3', values:%w(v5 v6)}]
          }])
        end

      end
    end
  end
end
