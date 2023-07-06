# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/plugins/request_compression'

module Aws
  module Plugins
    describe RequestCompression do
      let(:creds) { Aws::Credentials.new('akid', 'secret') }
       let(:client_opts) { { credentials: creds, stub_responses: true } }

      RequestCompressionClient = ApiHelper.sample_service(
        metadata: { 'protocol' => 'rest-xml' },
        operations: {
          'SomeOperation' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'input' => { 'shape' => 'SomeOperationRequest' },
            'requestCompression' => {
              'encodings' => ['gzip']
            }
          },
          'OperationWithNoSupportedEncoding' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'input' => { 'shape' => 'SomeOperationRequest' },
            'requestCompression' => {
              'encodings' => ['custom']
            }
          },
          'OperationWithSomeSupportedEncodings' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'input' => { 'shape' => 'SomeOperationRequest' },
            'requestCompression' => {
              'encodings' => %w[custom gzip]
            }
          },
          'OperationStreaming' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'input' => { 'shape' => 'OperationStreamingRequest' },
            'requestCompression' => {
              'encodings' => ['gzip']
            }
          }
        },
        shapes: {
          'SomeOperationRequest' => {
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
      let(:client) { RequestCompressionClient.new(client_opts) }
      let(:uncompressed_body) { 'a' * 10_240 }
      let(:small_body) { 'a' * 128 }

      def expect_uncompressed_body(resp, body)
        expect(resp.context.http_request.headers['Content-Encoding']).to be_nil
        expect(resp.context.http_request.body.size).to eql(body.size)
      end

      context 'disable_request_compression option' do
        it 'is implicitly false and compresses body' do
          client.config.request_min_compression_size_bytes = 128
          resp = client.some_operation(body: small_body)
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('gzip')
          expect(client.config.disable_request_compression).to be_falsy
        end

        it 'does not compress body when set to true' do
          client.config.disable_request_compression = true
          resp = client.some_operation(body: uncompressed_body)
          expect_uncompressed_body(resp, uncompressed_body)
        end

        it 'raises an argument error when set to non-boolean' do
          expect {
            RequestCompressionClient.new(disable_request_compression: 'foo')
          }.to raise_error(ArgumentError)
        end
      end

      context 'request_min_compression_size_bytes option' do
        it 'is implicitly 10,240 bytes and does not compress '\
            'when body does not meet the minimum bytes' do
          resp = client.some_operation(body: small_body)
          expect(client.config.request_min_compression_size_bytes).to eql(10_240)
          expect_uncompressed_body(resp, small_body)
        end

        it 'raises an argument error when set to non-integer' do
          expect {
            RequestCompressionClient.new(
              request_min_compression_size_bytes: 'foo'
            )
          }.to raise_error(ArgumentError)
        end

        it 'raises an argument error when set to negative integer' do
          expect {
            RequestCompressionClient.new(request_min_compression_size_bytes: -1)
          }.to raise_error(ArgumentError)
        end

        it 'raises an argument error when set over the limit' do
          expect {
            RequestCompressionClient.new(
              request_min_compression_size_bytes: 10_485_761
            )
          }.to raise_error(ArgumentError)
        end
      end

      context 'requestCompression operation' do
        it 'compresses the body and sets the content-encoding header' do
          resp = client.some_operation(body: uncompressed_body)
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('gzip')
        end

        it 'preserves the original body during the compression' do
          body = 'Hello World'
          client.config.request_min_compression_size_bytes = 0
          resp = client.some_operation(body: body)
          uncompressed = Zlib::GzipReader.new(resp.context.http_request.body)
          expect(uncompressed.read).to eq(body)
        end

        it 'processes the first supported encoding found' do
          resp = client.operation_with_some_supported_encodings(body: uncompressed_body)
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('gzip')
        end

        it 'does not compress when no supported encoding is found' do
          resp = client.operation_with_no_supported_encoding(body: uncompressed_body)
          expect_uncompressed_body(resp, uncompressed_body)
        end

        it 'compresses body when it meets the custom '\
           'request_min_compression_size_bytes' do
          client.config.request_min_compression_size_bytes = 128
          resp = client.some_operation(body: small_body)
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('gzip')
        end

        it 'skips compression when body is less than custom '\
           'request_min_compression_size_bytes' do
          client.config.request_min_compression_size_bytes = 256
          resp = client.some_operation(body: small_body)
          expect_uncompressed_body(resp, small_body)
        end

        it 'compresses a large streaming body' do
          large_body = StringIO.new('.' * 16_385)
          client.stub_responses(:operation_streaming, -> (context) do
            headers = context.http_request.headers
            expect(headers['Content-Encoding']). to eq('gzip')
            # capture the body by reading it into a new IO object
            body = StringIO.new
            # IO.copy_stream is the same method used by Net::Http to write our body to the socket
            IO.copy_stream(context.http_request.body, body)
            body.rewind
            large_body.rewind
            uncompressed = Zlib::GzipReader.new(body)
            expect(uncompressed.read).to eq(large_body.read)
          end)
          client.operation_streaming(body: large_body)
        end

        it 'compresses a small streaming body' do
          small_body = 'Hello World'
          client.stub_responses(:operation_streaming, -> (context) do
            headers = context.http_request.headers
            expect(headers['Content-Encoding']). to eq('gzip')
            body = StringIO.new
            IO.copy_stream(context.http_request.body, body)
            body.rewind
            uncompressed = Zlib::GzipReader.new(body)
            expect(uncompressed.read).to eq(small_body)
          end)
          client.operation_streaming(body: small_body)
        end
      end

    end
  end
end
