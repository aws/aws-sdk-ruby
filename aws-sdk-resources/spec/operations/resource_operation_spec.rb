require 'spec_helper'

module Aws
  module Resources
    module Operations
      describe ResourceOperation do

        describe '#request' do

          it 'returns the request given to the constructor' do
            request = double('request')
            operation = ResourceOperation.new(
              request: request,
              builder: double('builder')
            )
            expect(operation.request).to be(request)
          end

          it 'requries a :request option' do
            msg = 'missing required option :request'
            expect {
              ResourceOperation.new(
                request: nil,
                builder: double('builder')
              )
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        describe '#builder' do

          it 'returns the builder given to the constructor' do
            builder = double('builder')
            operation = ResourceOperation.new(
              request: double('request'),
              builder: builder
            )
            expect(operation.builder).to be(builder)
          end

          it 'requries a :builder option' do
            msg = 'missing required option :builder'
            expect {
              ResourceOperation.new(
                request: double('request'),
                builder: nil,
              )
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        describe '#call' do

          it 'calls the request, passing the response onto the builder' do

            client = double('client')
            response = double('client-response', data:{'path' => 'id'})
            parent = double('resource-parent', client:client)

            expect(client).to receive(:operation_name).
              with(param:'param-value').
              and_return(response)

            resource_class = new_resource_class(identifiers: [:id])

            request = Request.new(method_name: 'operation_name')
            builder = Builder.new(resource_class:resource_class, sources:[
              BuilderSources::ResponsePath.new(source:'path', target:'id')
            ])

            operation = ResourceOperation.new(request:request, builder:builder)

            resource = operation.call(
              resource:parent,
              args:[{param:'param-value'}]
            )
            expect(resource).to be_kind_of(resource_class)
            expect(resource.identifiers).to eq(:id => 'id')
            expect(resource.client).to be(client)
          end

        end
      end
    end
  end
end
