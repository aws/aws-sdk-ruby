# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/plugins/checksum_algorithm'

module Aws
  module Plugins
    describe ChecksumAlgorithm do
      let(:checksum_client) do
        ApiHelper.sample_service(
          metadata: { 'protocol' => 'rest-xml' },
          operations: {
            'HttpChecksumOperation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'SomeInput' },
              'output' => { 'shape' => 'SomeOutput' },
              'httpChecksum' => {
                'requestChecksumRequired' => request_checksum_required,
                'requestAlgorithmMember' => 'ChecksumAlgorithm',
                'requestValidationModeMember' => 'ValidationMode',
                'responseAlgorithms' => response_algorithms
              }
            },
            'HttpChecksumStreamingOperation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'unsignedPayload' => true,
              'input' => { 'shape' => 'SomeStreamingInput' },
              'output' => { 'shape' => 'SomeStreamingOutput' },
              'httpChecksum' => {
                'requestChecksumRequired' => request_checksum_required,
                'requestAlgorithmMember' => 'ChecksumAlgorithm',
                'requestValidationModeMember' => 'ValidationMode',
                'responseAlgorithms' => response_algorithms
              }
            },
            'ChecksumRequiredOperation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'SomeInput' },
              'output' => { 'shape' => 'SomeOutput' },
              'httpChecksum' => {
                'requestChecksumRequired' => request_checksum_required,
              }
            }
          },
          shapes: {
            'Body' => { 'type' => 'blob' },
            'ChecksumAlgorithm' => {
              'type' => 'string',
               # SHA256 intentionally unmodeled for forwards compatibility test
              'enum' => ['CRC32', 'CRC32C', 'CRC64NVME', 'SHA1']
            },
            'SomeInput' => {
              'type' => 'structure',
              'members' => {
                'ChecksumAlgorithm' => {
                  'shape' => 'ChecksumAlgorithm',
                  'location' => 'header',
                  'locationName' => 'x-amz-request-algorithm'
                },
                'ValidationMode' => { 'shape' => 'ValidationMode' },
                'Body' => { 'shape' => 'Body' }
              },
              'payload' => 'Body'
            },
            'SomeStreamingInput' => {
              'type' => 'structure',
              'members' => {
                'ChecksumAlgorithm' => {
                  'shape' => 'ChecksumAlgorithm',
                  'location' => 'header',
                  'locationName' => 'x-amz-request-algorithm'
                },
                'ValidationMode' => { 'shape' => 'ValidationMode' },
                'Body' => { 'shape' => 'Body', 'streaming' => true }
              },
              'payload' => 'Body'
            },
            'SomeOutput' => {
              'type' => 'structure',
              'members' => {}
            },
            'SomeStreamingOutput' => {
              'type' => 'structure',
              'members' => {}
            },
            'ValidationMode' => {
              'type' => 'string',
              'enum' => ['ENABLED']
            }
          }
        ).const_get(:Client)
      end

      let(:request_checksum_required) { true }
      let(:response_algorithms) do
        %w[CRC32 CRC32C CRC64NVME SHA1 SHA256]
      end

      let(:client) { checksum_client.new(stub_responses: true) }

      describe 'request_checksum_calculation' do
        it 'is configured to always compute by default' do
          expect(client.config.request_checksum_calculation)
            .to eq('WHEN_SUPPORTED')
        end

        it 'can be configured using shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:request_checksum_calculation)
            .and_return('WHEN_REQUIRED')
          expect(client.config.request_checksum_calculation)
            .to eq('WHEN_REQUIRED')
        end

        it 'can be configured using ENV with precedence over shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:request_checksum_calculation)
            .and_return('WHEN_SUPPORTED')
          ENV['AWS_REQUEST_CHECKSUM_CALCULATION'] = 'WHEN_REQUIRED'
          expect(client.config.request_checksum_calculation)
            .to eq('WHEN_REQUIRED')
        end

        it 'raises when request_checksum_calculation is not valid' do
          ENV['AWS_REQUEST_CHECKSUM_CALCULATION'] = 'peccy'
          expect { client }.to raise_error(ArgumentError, /WHEN_SUPPORTED/)
        end
      end

      describe 'response_checksum_calculation' do
        it 'is configured to always verify by default' do
          expect(client.config.response_checksum_calculation)
            .to eq('WHEN_SUPPORTED')
        end

        it 'can be configured using shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:response_checksum_calculation)
            .and_return('WHEN_REQUIRED')
          expect(client.config.response_checksum_calculation)
            .to eq('WHEN_REQUIRED')
        end

        it 'can be configured using ENV with precedence over shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:response_checksum_calculation)
            .and_return('WHEN_SUPPORTED')
          ENV['AWS_RESPONSE_CHECKSUM_CALCULATION'] = 'WHEN_REQUIRED'
          expect(client.config.response_checksum_calculation)
            .to eq('WHEN_REQUIRED')
        end

        it 'raises when response_checksum_calculation is not valid' do
          ENV['AWS_RESPONSE_CHECKSUM_CALCULATION'] = 'peccy'
          expect { client }.to raise_error(ArgumentError, /WHEN_SUPPORTED/)
        end
      end

      context 'request checksum calculation' do
        it 'raises when request algorithm is not supported by the client' do
          expect do
            client.http_checksum_operation(checksum_algorithm: 'no-such-algorithm')
          end.to raise_error(ArgumentError)
        end

        it 'with requestAlgorithmMember; will use a CRC32 as a default' do
          resp = client.http_checksum_operation
          header = resp.context.http_request.headers['x-amz-checksum-crc32']
          expect(header).to eq('AAAAAA==')
        end

        it 'without requestAlgorithmMember; will use a CRC32 as a default' do
          resp = client.checksum_required_operation(body: 'crc32 me captain')
          header = resp.context.http_request.headers['x-amz-checksum-crc32']
          expect(header).to eq('nqtcGg==')
        end

        file = File.expand_path('checksum_request.json', __dir__)
        test_cases = JSON.load_file(file)

        test_cases.each do |test_case|
          it "passes test: #{test_case['documentation']}" do
            algorithm = test_case['checksumAlgorithm'].upcase
            unless ChecksumAlgorithm::CLIENT_ALGORITHMS.include?(algorithm)
              skip "Algorithm #{algorithm} not supported"
            end

            resp = client.http_checksum_operation(
              checksum_algorithm: algorithm,
              body: test_case['requestPayload']
            )
            headers = resp.context.http_request.headers
            test_case['expectHeaders'].each do |key, value|
              expect(headers[key]).to eq(value)
            end
          end
        end
      end

      context 'request streaming checksum calculation' do
        file = File.expand_path('checksum_streaming_request.json', __dir__)
        test_cases = JSON.load_file(file)

        test_cases.each do |test_case|
          it "passes test: #{test_case['documentation']}" do
            algorithm = test_case['checksumAlgorithm'].upcase
            unless ChecksumAlgorithm::CLIENT_ALGORITHMS.include?(algorithm)
              skip "Algorithm #{algorithm} not supported"
            end

            body = test_case['requestPayload']
            client.stub_responses(:http_checksum_streaming_operation, lambda do |context|
              headers = context.http_request.headers

              expect(headers['x-amz-content-sha256'])
                .to eq('STREAMING-UNSIGNED-PAYLOAD-TRAILER')
              test_case['expectHeaders'].each do |key, value|
                expect(headers[key]).to eq(value)
              end

              # capture the body by reading it into a new IO object
              new_body = StringIO.new
              # IO.copy_stream is the same method used by Net::Http to write our body to the socket
              IO.copy_stream(context.http_request.body, new_body)
              new_body.rewind

              expect(headers['Content-Length'].to_i).to eq(new_body.size)
              read_body = new_body.read
              test_case['expectTrailers'].each do |key, value|
                expect(read_body).to include("#{key}:#{value}")
              end
              context
            end)

            client.http_checksum_streaming_operation(
              checksum_algorithm: algorithm,
              body: body
            )
          end
        end
      end

      context 'response checksum calculation' do
        it 'computes a validation_list' do
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validation_list])
            .to include(*%w[SHA1 CRC32 SHA256])
        end

        it 'validation_list does not include unknown algorithms' do
          expect_any_instance_of(ChecksumAlgorithm::ChecksumHandler)
            .to receive(:operation_response_algorithms).and_return(%w[UNKNOWN CRC32])
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validation_list]).to eq %w[CRC32]
        end

        it 'validates the first matched header by priority' do
          client.stub_responses(
            :http_checksum_operation,
            [{
               body: '',
               headers: {
                 'x-amz-checksum-sha256' => '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=',
                 'x-amz-checksum-crc32' => 'AAAAAA=='
               },
               status_code: 200
             }])
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
        end

        it 'does not validate unknown checksums' do
          client.stub_responses(
            :http_checksum_operation,
            [{
               body: '',
               headers: {'x-amz-checksum-unknown' => 'unknown'},
               status_code: 200
             }])
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validated]).to be_nil
        end

        file = File.expand_path('checksum_response.json', __dir__)
        test_cases = JSON.load_file(file)

        test_cases.each do |test_case|
          it "passes test: #{test_case['documentation']}" do
            algorithm = test_case['checksumAlgorithm'].upcase
            unless ChecksumAlgorithm::CLIENT_ALGORITHMS.include?(algorithm)
              skip "Algorithm #{algorithm} not supported"
            end

            expect = test_case['expect']
            client.stub_responses(
              :http_checksum_operation,
              [{
                 body: test_case['responsePayload'],
                 headers: test_case['responseHeaders'],
                 status_code: 200
              }]
            )
            case expect['kind']
            when 'success'
              client.http_checksum_operation(validation_mode: 'ENABLED')
            when 'failure'
              expect do
                client.http_checksum_operation(validation_mode: 'ENABLED')
              end.to raise_error(Aws::Errors::ChecksumError, /#{expect['responseHeaders']}/)
            else
              raise 'Unsupported test kind'
            end
          end
        end
      end

      context 'when checksums are not required' do
        let(:request_checksum_required) { false }

        it 'WHEN_SUPPORTED; no algorithm; includes a checksum' do
          resp = client.http_checksum_operation(checksum_algorithm: 'CRC32')
          expect(resp.context.http_request.headers['x-amz-checksum-crc32'])
            .to eq('AAAAAA==')
        end

        it 'WHEN_REQUIRED; no algorithm; does not include a checksum' do
          client = checksum_client.new(
            stub_responses: true,
            request_checksum_calculation: 'WHEN_REQUIRED'
          )
          resp = client.http_checksum_operation
          expect(resp.context.http_request.headers['x-amz-checksum-crc32'])
            .to be_nil
        end
      end

      context 'when checksums are required' do
        let(:request_checksum_required) { true }

        it 'WHEN_SUPPORTED; no algorithm; includes a checksum' do
          resp = client.http_checksum_operation
          expect(resp.context.http_request.headers['x-amz-checksum-crc32'])
            .to eq('AAAAAA==')
        end

        it 'WHEN_REQUIRED; no algorithm; includes a checksum' do
          client = checksum_client.new(
            stub_responses: true,
            request_checksum_calculation: 'WHEN_REQUIRED'
          )
          resp = client.http_checksum_operation
          expect(resp.context.http_request.headers['x-amz-checksum-crc32'])
            .to eq('AAAAAA==')
        end
      end

      context 'when a response may be validated' do
        let(:response_algorithms) { %w[CRC32] }

        def stub_client(client)
          client.stub_responses(
            :http_checksum_operation,
            [{
               body: '',
               headers: { 'x-amz-checksum-crc32' => 'AAAAAA==' },
               status_code: 200
            }]
          )
        end

        it 'WHEN_SUPPORTED; not ENABLED; validates the checksum' do
          stub_client(client)
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validated]).to eq('CRC32')
          # This needs to be set by the plugin in this case
          expect(resp.context.params[:validation_mode]).to eq('ENABLED')
        end

        it 'WHEN_REQUIRED; not ENABLED; does not validate the checksum' do
          client = checksum_client.new(
            stub_responses: true,
            response_checksum_calculation: 'WHEN_REQUIRED'
          )
          stub_client(client)
          resp = client.http_checksum_operation
          expect(resp.context[:http_checksum][:validated]).to be_nil
        end

        it 'WHEN_REQUIRED; ENABLED; validates the checksum' do
          client = checksum_client.new(
            stub_responses: true,
            response_checksum_calculation: 'WHEN_REQUIRED'
          )
          stub_client(client)
          resp = client.http_checksum_operation(validation_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to eq('CRC32')
        end
      end
    end
  end
end
