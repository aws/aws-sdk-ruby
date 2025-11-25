# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module H2
      describe Handler do
        let(:config) { OpenStruct.new }
        let(:handler) { Handler.new }
        let(:stream) { double('stream', headers: true, on: true, data: true, close: true) }
        let(:endpoint) { 'https://test.endpoint.api:1234/foo/path?query=abc' }
        let(:h2_client) { double('h2-client', new_stream: stream) }

        describe '#call' do
          let(:mock_connection) do
            double(
              'connection',
              connect: true,
              start: true,
              h2_client: h2_client,
              new_stream: stream,
              debug_output: true
            )
          end

          let(:client) { double('client', connection: mock_connection) }

          let(:context) do
            RequestContext.new.tap do |context|
              context.config = config
              context.http_request.endpoint = endpoint
              context.http_request.body = 'body-data'
              context.http_request.headers['Abc'] = 'xyz'
              context.client = client
            end
          end

          let(:mock_call) { handler.call(context) }

          describe 'connection endpoint' do
            it 'starts a connection by endpoint with port' do
              expect(mock_connection).to receive(:connect).with(URI.parse(endpoint))
              mock_call
            end
          end

          describe 'initial request' do
            it 'sends :scheme, :method, :path, :authority headers and others in H2 format' do
              expected_headers = {
                ':path' => '/foo/path?query=abc',
                ':scheme' => 'https',
                ':method' => 'GET',
                ':authority' => 'test.endpoint.api:1234',
                'abc' => 'xyz'
              }
              expect(stream).to receive(:headers)
                .with(expected_headers, end_stream: false)
              mock_call
            end

            it 'sends the body' do
              expect(stream).to receive(:data)
                .with('body-data', end_stream: true)
              mock_call
            end
          end

          describe '#response' do
            it 'returns a AsyncResponse object from #call' do
              expect(mock_call).to be_a(Seahorse::Client::AsyncResponse)
            end

            it 'populates the #context of the returned response' do
              expect(mock_call.context).to be(context)
            end
          end
        end

        describe '#call errors' do
          let(:mock_error_connection) { double('connection', start: true, h2_client: h2_client, new_stream: stream) }
          let(:client) { double('client', connection: mock_error_connection) }

          let(:context) do
            RequestContext.new.tap do |context|
              context.config = config
              context.http_request.endpoint = endpoint
              context.client = client
            end
          end

          let(:mock_call) { handler.call(context) }

          it 'wraps SocketError w NetworkingError' do
            allow(mock_error_connection).to receive(:connect).and_raise(SocketError.new)
            expect(mock_call.join!.error).to be_a(Seahorse::Client::NetworkingError)
          end
        end
      end
    end
  end
end
