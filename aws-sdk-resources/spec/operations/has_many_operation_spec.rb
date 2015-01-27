require 'spec_helper'

module Aws
  module Resources
    module Operations
      describe HasManyOperation do
        describe '#request' do

          it 'returns the request given to the constructor' do
            request = double('request')
            operation = HasManyOperation.new(
              request: request,
              builder: double('builder').as_null_object
            )
            expect(operation.request).to be(request)
          end

          it 'requries a :request option' do
            msg = 'missing required option :request'
            expect {
              HasManyOperation.new(
                request: nil,
                builder: double('builder')
              )
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        describe '#builder' do

          it 'returns the builder given to the constructor' do
            builder = double('builder').as_null_object
            operation = HasManyOperation.new(
              request: double('request'),
              builder: builder
            )
            expect(operation.builder).to be(builder)
          end

          it 'requries a :builder option' do
            msg = 'missing required option :builder'
            expect {
              HasManyOperation.new(
                request: double('request'),
                builder: nil,
              )
            }.to raise_error(Errors::DefinitionError, msg)
          end

        end

        context '#call' do

          it 'calls the request, passing the response onto the builder' do

            resource_class = new_resource_class(identifiers: [:id])
            resource_class.const_set(:Batch, Class.new(Batch))
            resource_class.add_operation(:linked, HasManyOperation.new(
              request: Request.new(method_name:'list_resources'),
              builder: Builder.new(
                resource_class: resource_class,
                sources: [
                  BuilderSources::ResponsePath.new(source:'path[]', target:'id')
                ]
              )
            ))

            resp1 = double('client-response', data: {'path' => %w(id1 id2) })
            resp2 = double('client-response', data: {'path' => %w(id3 id4) })
            responses = [resp1, resp2]

            client = double('client')
            allow(client).to receive_message_chain(:config, :api, :metadata).and_return(Paging::NullProvider.new)
            allow(client).to receive_message_chain(:config, :api, :operation, :name).and_return('OperationName')
            expect(client).to receive(:list_resources).
              and_return(responses)

            resource = resource_class.new(id:'parent', client:client)
            enumerator = resource.linked

            expect(enumerator).to be_kind_of(Enumerable)
            resources = enumerator.to_a
            expect(resources.size).to eq(4)
            expect(resources.map(&:id)).to eq(%w(id1 id2 id3 id4))
          end

        end
      end
    end
  end
end
