require 'spec_helper'

module Aws
  module Resource
    module Operations
      describe DataOperation do
        describe '#request' do

          it 'returns the request given to the constructor' do
            request = double('request')
            operation = DataOperation.new(request: request, path: '$')
            expect(operation.request).to be(request)
          end

          it 'requries a :request option' do
            msg = 'missing required option :request'
            expect {
              DataOperation.new(request: nil, path: '$')
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        describe '#path' do

          it 'returns the path given to the constructor' do
            operation = DataOperation.new(request: double('request'), path: '$')
            expect(operation.path).to eq('$')
          end

          it 'requries a :path option' do
            msg = 'missing required option :path'
            expect {
              DataOperation.new(request: double('request'))
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        context '#call' do

          it 'calls the request, populating resource data from the response' do
            data = double('data')
            client = double('client')
            expect(client).to receive(:operation).
              and_return(double('response', data:{'path' => data}))

            resource_class = Resource.define(double('client-class'), ['id'])
            resource_class.load_operation = DataOperation.new(
              request: Request.new(method_name:'operation'),
              path: 'path')

            resource = resource_class.new(id:'id', client:client)
            resource.load

            expect(resource.data).to be(data)
          end

          it 'treats the load path "$" as the response data' do
            response = double('response', data: double('data'))
            client = double('client')
            expect(client).to receive(:operation).and_return(response)

            resource_class = Resource.define(double('client-class'), ['id'])
            resource_class.load_operation = DataOperation.new(
              request: Request.new(method_name:'operation'),
              path: '$')

            resource = resource_class.new(id:'id', client:client)
            resource.load

            expect(resource.data).to be(response.data)
          end

        end
      end
    end
  end
end
