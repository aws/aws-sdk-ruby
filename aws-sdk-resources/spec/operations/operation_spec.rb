require 'spec_helper'

module Aws
  module Resources
    module Operations
      describe Operation do
        describe '#request' do

          it 'returns the request given to the constructor' do
            request = double('request')
            operation = Operation.new(request: request)
            expect(operation.request).to be(request)
          end

          it 'requries a :request option' do
            msg = 'missing required option :request'
            expect {
              Operation.new
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        context '#call' do

          it 'calls the request, returning the client response' do
            client = double('client')
            response = double('client-response')
            expect(client).to receive(:operation).
              with(param:'value').
              and_return(response)

            resource_class = Class.new(Resource)
            resource_class.add_operation(:action, Operation.new(
              request: Request.new(method_name:'operation')
            ))

            resource = resource_class.new(client:client)
            resp = resource.action(param:'value')

            expect(resp).to be(response)
          end

        end
      end
    end
  end
end
