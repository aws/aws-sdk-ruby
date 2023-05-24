# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/plugins/checksum_algorithm'

module Aws
  module Plugins
    describe ChecksumAlgorithm do
      let(:creds) { Aws::Credentials.new('akid', 'secret') }
      let(:client_opts) { { credentials: creds, stub_responses: true } }


      # Don't include CRC32C in these definitions - increases complexity of testing
      # with and without CRT
      ChecksumClient = ApiHelper.sample_service(
        metadata: { 'protocol' => 'rest-xml' },
        operations: {
          'SomeOperation' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'httpChecksumRequired' => 'true',
            'input' => { 'shape' => 'SomeOperationRequest' },
            'output' => { 'shape' => 'StructureShape' },
            'httpChecksum' => {
              "requestChecksumRequired" => true,
              "requestAlgorithmMember" => "ChecksumAlgorithm",
              "requestValidationModeMember" => "ChecksumMode",
              "responseAlgorithms" => ["CRC32", "SHA256", "SHA1"]
            }
          },
          'SomeOperationStreaming' => {
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
            'authtype' => 'v4-unsigned-body',
            'input' => { 'shape' => 'SomeOperationRequest' },
            'output' => { 'shape' => 'StructureShape' },
            'httpChecksum' => {
              "requestChecksumRequired" => true,
              "requestAlgorithmMember" => "ChecksumAlgorithm",
              "requestValidationModeMember" => "ChecksumMode",
              "responseAlgorithms" => ["CRC32", "SHA256", "SHA1"]
            }
          }
        },
        shapes: {
          'StructureShape' => {
            'type' => 'structure',
            'members' => {
              'String' => { 'shape' => 'StringShape' }
            }
          },
          'StringShape' => { 'type' => 'string' },
          'ChecksumAlgorithmShape' => {
            'type' => 'string',
            'enum' => %w[CRC32 SHA1]
          },
          'ChecksumModeEnum' => {
            'type' => 'string',
            'enum' => %w[ENABLED]
          },
          'SomeOperationRequest' => {
            'type' => 'structure',
            'members' => {
              'ChecksumAlgorithm' => { 'shape' => 'ChecksumAlgorithmShape' },
              'ChecksumMode' => { 'shape' => 'ChecksumModeEnum' },
              'Body' => { 'shape' => 'Body', 'streaming' => true}
            },
            'payload' => 'Body'
          },
          'Body' => { 'type' => 'blob' }
        }
      ).const_get(:Client)
      let(:client) { ChecksumClient.new(client_opts) }

      context 'request algorithm selection' do
        it 'uses crc32 in the header' do
          resp = client.some_operation(checksum_algorithm: 'CRC32')
          expect(resp.context.http_request.headers['x-amz-checksum-crc32']).to_not be_nil
        end

        it 'uses crc32 in the trailer' do
          resp = client.some_operation_streaming(checksum_algorithm: 'CRC32')
          expect(resp.context.http_request.headers['x-amz-trailer']).to eq 'x-amz-checksum-crc32'
        end

        it 'uses un-modeled sha256 in the header' do
          resp = client.some_operation(checksum_algorithm: 'sha256')
          expect(resp.context.http_request.headers['x-amz-checksum-sha256']).to_not be_nil
        end

        it 'uses un-modeled sha256 in the trailer' do
          resp = client.some_operation_streaming(checksum_algorithm: 'sha256')
          expect(resp.context.http_request.headers['x-amz-trailer']).to eq 'x-amz-checksum-sha256'
        end

        # Additional behavior tests

        it 'http_checksum_required; computes md5 when not configured' do
          resp = client.some_operation
          expect(resp.context.http_request.headers['Content-MD5']).to_not be_nil
        end

        it 'http_checksum_required; does not computes md5 when another checksum is computed' do
          resp = client.some_operation(checksum_algorithm: 'sha256')
          expect(resp.context.http_request.headers['Content-MD5']).to be_nil
        end

        it 'raises when request algorithm is not supported by the client' do
          expect do
            client.some_operation(checksum_algorithm: 'no-such-algorithm')
          end.to raise_error(ArgumentError)
        end
      end

      context 'response algorithm selection' do
        let(:handler) { client.handlers.entries.find { |h| h.handler_class == Aws::Plugins::ChecksumAlgorithm::ChecksumHandler } }

        it 'skips response checksum when ChecksumMode is not set' do
          expect(handler).not_to receive(:add_verify_response_checksum_handlers)
          client.some_operation
        end

        it 'computes validation_list when ChecksumMode is set' do
          resp = client.some_operation(checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validation_list]).to eq %w[SHA1 CRC32 SHA256]
        end

        it 'validation_list does not include unsupported algorithms' do
          expect(ChecksumAlgorithm).to receive(:operation_response_algorithms).and_return(%w[CRC64 CRC32])
          resp = client.some_operation(checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validation_list]).to eq %w[CRC32]
        end

        it 'validates a matched header' do
          client.stub_responses(
            :some_operation,
            [{
               body: '',
               headers: {'x-amz-checksum-sha256' => '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU='},
               status_code: 200
             }])
          resp = client.some_operation(checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to eq 'SHA256'
        end

        it 'validates the first matched header by priority' do
          client.stub_responses(
            :some_operation,
            [{
               body: '',
               headers: {
                 'x-amz-checksum-sha256' => '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=',
                 'x-amz-checksum-crc32' => 'AAAAAA=='
               },
               status_code: 200
             }])
          resp = client.some_operation(checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
        end

        it 'does not validate an unmodeled header' do
          client.stub_responses(
            :some_operation,
            [{
               body: '',
               headers: {'x-amz-checksum-crc64' => 'crc64_value'},
               status_code: 200
             }])
          resp = client.some_operation(checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to be_nil
        end
      end

      context 'PUT requests' do

        it 'handles unsigned-payload auth with checksum in trailer' do
          client.stub_responses(:some_operation_streaming, -> (context) do
            headers = context.http_request.headers

            expect(headers['x-amz-content-sha256']).to eq('STREAMING-UNSIGNED-PAYLOAD-TRAILER')
            expect(headers['x-amz-trailer']).to eq('x-amz-checksum-sha256')
            expect(headers['content-encoding']).to eq('aws-chunked')
            expect(headers['x-amz-decoded-content-length']).to eq('11')
            # capture the body by reading it into a new IO object
            body = StringIO.new
            IO.copy_stream(context.http_request.body, body)
            body.rewind
            expect(body.read).to eq "b\r\nHello World\r\n0\r\nx-amz-checksum-sha256:pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4=\r\n\r\n"
          end)
          client.some_operation_streaming(checksum_algorithm: 'sha256', body: 'Hello World')

        end

        it 'handles header-based auth with checksum in header' do
          client.stub_responses(:some_operation, -> (context) do
            expect(context.http_request.headers['x-amz-checksum-sha256']).to eq('pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4=')
            expect(context.http_request.body.read).to eq('Hello World')
          end)
          client.some_operation(checksum_algorithm: 'sha256', body: 'Hello World')
        end

        it 'handles sigv4-streaming auth with checksum in trailer' do
          skip("sigv4 streaming is not supported")
        end
      end
    end
  end
end
