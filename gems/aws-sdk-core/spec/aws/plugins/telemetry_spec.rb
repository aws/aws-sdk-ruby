# frozen_string_literal: true

require_relative '../../spec_helper'
require 'opentelemetry-sdk'
require 'webmock/rspec'

module Aws
  module Plugins
    describe Telemetry do
      let(:creds) { Aws::Credentials.new('akid', 'secret') }
      let(:client_config) { { credentials: creds, region: 'us-east-1' } }

      TelemetryClient = ApiHelper.sample_service(
        metadata: {
          'protocol' => 'rest-xml',
          'serviceId' => 'Telemetry Service'
        },
        operations: {
          'SomeOperation' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/some_operation' },
            'input' => { 'shape' => 'OperationRequest' },
            'requestcompression' => {
              'encodings' => ['gzip']
            }
          },
          'OperationStreaming' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'input' => { 'shape' => 'OperationStreamingRequest' },
            'requestcompression' => {
              'encodings' => ['gzip']
            }
          }
        },
        shapes: {
          'OperationRequest' => {
            'type' => 'structure',
            'members' => {
              'Body' => { 'shape' => 'Body', 'streaming' => false }
            },
            'payload' => 'Body'
          },
          'OperationStreamingRequest' => {
            'type' => 'structure',
            'members' => {
              'Body' => { 'shape' => 'Body', 'streaming' => true }
            },
            'payload' => 'Body'
          },
          'Body' => { 'type' => 'blob' }
        }
      ).const_get(:Client)

      context 'telemetry_provider option' do
        let(:custom_class) { Class.new(Aws::Telemetry::TelemetryProviderBase) }
        let(:custom_provider) { custom_class.new }

        it 'defaults to no-op provider' do
          client = TelemetryClient.new(client_config)
          expect(client.config.telemetry_provider)
            .to be_an_instance_of(Aws::Telemetry::NoOpTelemetryProvider)
        end

        it 'does not raise error when given an otel provider' do
          otel_provider = Aws::Telemetry::OTelProvider.new
          client_config[:telemetry_provider] = otel_provider
          expect { TelemetryClient.new(client_config) }
            .not_to raise_error
        end

        it 'does not raise error when given a custom provider' do
          client_config[:telemetry_provider] = custom_provider
          expect { TelemetryClient.new(client_config) }
            .not_to raise_error
        end

        it 'raises an argument error when given an invalid provider' do
          expect do
            TelemetryClient.new(telemetry_provider: 'foo')
          end.to raise_error(ArgumentError)
        end
      end

      describe 'telemetry providers' do
        context 'no-op telemetry provider' do
          it 'does not raise error when calling an operation' do
            client = TelemetryClient.new(stub_responses: true)
            expect { client.some_operation }.not_to raise_error
          end
        end

        context 'otel provider' do
          let(:otel_provider) { Aws::Telemetry::OTelProvider.new }
          let(:otel_export) { OpenTelemetry::SDK::Trace::Export }
          let(:otel_exporter) { otel_export::InMemorySpanExporter.new }

          before do
            processor = otel_export::SimpleSpanProcessor.new(otel_exporter)
            OpenTelemetry::SDK.configure do |c|
              c.add_span_processor(processor)
            end
          end

          let(:finished_send_span) do
            otel_exporter
              .finished_spans
              .find { |span| span.name == 'Handler.NetHttp' }
          end

          let(:finished_op_span) do
            otel_exporter
              .finished_spans
              .find { |span| span.name == 'TelemetryService.SomeOperation' }
          end

          let(:client) do
            client_config.tap do |c|
              c[:telemetry_provider] = otel_provider
              c[:endpoint] = 'https://foo.com'
            end
            TelemetryClient.new(client_config)
          end

          it 'raises error when an otel dependency is not required' do
            allow(Aws::Telemetry).to receive(:otel_loaded?).and_return(false)
            expect { otel_provider }
              .to raise_error(
                ArgumentError,
                'Requires the `opentelemetry-sdk` gem to use OTel Provider.'
              )
          end

          it 'creates spans with all the supplied parameters' do
            stub_request(:post, 'https://foo.com/some_operation')
            client.some_operation

            # pp otel_exporter.finished_spans
            expect(finished_send_span).not_to be_nil
            expect(finished_op_span).not_to be_nil
            expect(finished_send_span.attributes)
              .to include(
                'http.method' => 'POST',
                'net.protocol.name' => 'http',
                'net.protocol.version' => '1.1',
                'net.peer.name' => 'foo.com',
                'net.peer.port' => '443',
                'http.status_code' => '200'
              )
            expect(finished_op_span.attributes)
              .to include(
                'rpc.service' => 'Telemetry Service',
                'rpc.method' => 'SomeOperation',
                'code.function' => 'some_operation',
                'code.namespace' => 'Aws::Plugins::Telemetry'
              )
            expect(finished_send_span.kind).to eq(:internal)
            expect(finished_op_span.kind).to eq(:client)
            expect(finished_send_span.parent_span_id)
              .to eq(finished_op_span.span_id)
          end

          it 'applies content-length span attributes when applicable' do
            body = 'AAAA'
            stub_request(:post, 'https://foo.com/some_operation')
              .to_return(
                body: body,
                headers: { 'Content-Length' => body.size }
              )
            client.some_operation(body: body)

            expect(finished_send_span.attributes)
              .to include(
                'http.request_content_length' => body.size.to_s,
                'http.response_content_length' => body.size.to_s
              )
          end

          it 'populates span data with error when it occurs' do
            stub_request(:post, 'https://foo.com/some_operation')
              .to_return(status: 500)
            server_err = nil
            begin
              client.some_operation
            rescue StandardError => e
              server_err = e
            end

            expect(finished_op_span.status.code).to eq(2) # err code
            expect(finished_op_span.events[0].name).to eq('exception')
            expect(finished_op_span.events[0].attributes['exception.type'])
              .to eq(server_err.to_s)
          end

          context 'stub_responses' do
            it 'creates a stub span with all the supplied parameters' do
              client = TelemetryClient.new(
                stub_responses: true,
                telemetry_provider: otel_provider
              )
              client.some_operation

              finished_stub_span =
                otel_exporter
                  .finished_spans
                  .find { |span| span.name == 'Handler.StubResponses' }

              expect(finished_stub_span).not_to be_nil
              expect(finished_stub_span.attributes)
                .to include(
                  'http.method' => 'POST',
                  'net.protocol.name' => 'http',
                  'net.protocol.version' => '1.1'
                )
              expect(finished_stub_span.kind).to eq(:internal)
              expect(finished_stub_span.parent_span_id)
                .to eq(finished_op_span.span_id)
            end
          end
        end
      end
    end
  end
end
