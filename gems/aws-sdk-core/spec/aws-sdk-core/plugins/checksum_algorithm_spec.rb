# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe ChecksumAlgorithm do
        let(:shapes) { ClientHelper.sample_shapes }
        let(:sample_client) { ClientHelper.sample_client(shapes: shapes) }
        let(:client_class) { sample_client.const_get(:Client) }
        let(:client_options) { { stub_responses: true, endpoint: 'https://example.com' } }
        let(:client) { client_class.new(**client_options) }

        before do
          shapes['smithy.ruby.tests#Structure']['members'].delete('streamingBlob')
          shapes['smithy.ruby.tests#SampleClient']['traits'] = {
            'aws.protocols#restJson1' => {}
          }
          shapes['smithy.ruby.tests#Operation']['traits'] = {
            'aws.protocols#httpChecksum' => {
              'requestAlgorithmMember' => 'ChecksumAlgorithm'
            },
            'smithy.api#http' => {
              'method' => 'POST',
              'uri' => '/',
              'code' => 200
            }
          }
          shapes['smithy.ruby.tests#Structure']['members']['ChecksumAlgorithm'] = {
            'target' => 'smithy.api#String',
            'traits' => {
              'smithy.api#httpHeader' => 'x-amz-sdk-checksum-algorithm'
            }
          }
          shapes['smithy.ruby.tests#Structure']['members']['ChecksumMode'] = {
            'target' => 'smithy.api#String',
            'traits' => {
              'smithy.api#httpHeader' => 'x-amz-checksum-mode'
            }
          }
        end

        it 'uses supported request and response checksum behavior by default' do
          expect(client.config.request_checksum_calculation).to eq('when_supported')
          expect(client.config.response_checksum_validation).to eq('when_supported')
        end

        it 'normalizes explicit configuration values' do
          configured = client_class.new(
            **client_options,
            request_checksum_calculation: 'WHEN_REQUIRED',
            response_checksum_validation: 'WHEN_REQUIRED'
          )

          expect(configured.config.request_checksum_calculation).to eq('when_required')
          expect(configured.config.response_checksum_validation).to eq('when_required')
        end

        it 'resolves configuration from environment variables' do
          stub_const(
            'ENV',
            {
              'AWS_REQUEST_CHECKSUM_CALCULATION' => 'when_required',
              'AWS_RESPONSE_CHECKSUM_VALIDATION' => 'when_required'
            }
          )

          configured = client_class.new(**client_options)
          expect(configured.config.request_checksum_calculation).to eq('when_required')
          expect(configured.config.response_checksum_validation).to eq('when_required')
        end

        it 'resolves configuration from the selected shared profile' do
          allow(Aws).to receive(:shared_config).and_return(
            double(
              'shared config',
              profiles: {
                'checksums' => {
                  'request_checksum_calculation' => 'when_required',
                  'response_checksum_validation' => 'when_required'
                }
              }
            )
          )

          configured = client_class.new(**client_options, profile: 'checksums')
          expect(configured.config.request_checksum_calculation).to eq('when_required')
          expect(configured.config.response_checksum_validation).to eq('when_required')
        end

        it 'rejects invalid explicit configuration' do
          expect do
            client_class.new(**client_options, request_checksum_calculation: 'sometimes')
          end.to raise_error(ArgumentError, /when_supported.*when_required/)
        end

        it 'calculates CRC32 by default and serializes the selected algorithm' do
          response = client.operation(string: 'payload')
          request = response.context.http_request
          expected = checksum_for('CRC32', request.body)

          expect(request.headers['x-amz-sdk-checksum-algorithm']).to eq('CRC32')
          expect(request.headers['x-amz-checksum-crc32']).to eq(expected)
          expect(response.context[:http_checksum][:request_algorithm]).to include(
            algorithm: 'CRC32',
            in: 'header'
          )
        end

        %w[CRC32 SHA1 SHA256 SHA512].each do |algorithm|
          it "calculates #{algorithm}" do
            response = client.operation(string: 'payload', checksum_algorithm: algorithm.downcase)
            request = response.context.http_request

            expect(request.headers["x-amz-checksum-#{algorithm.downcase}"])
              .to eq(checksum_for(algorithm, request.body))
          end
        end

        it 'calculates a required checksum without an algorithm member' do
          shapes['smithy.ruby.tests#Operation']['traits'] = {
            'aws.protocols#httpChecksum' => { 'requestChecksumRequired' => true }
          }
          shapes['smithy.ruby.tests#Structure']['members'].delete('ChecksumAlgorithm')

          response = client.operation(string: 'payload')
          expect(response.context.http_request.headers['x-amz-checksum-crc32'])
            .to eq(checksum_for('CRC32', response.context.http_request.body))
        end

        %w[CRC32 SHA1 SHA256 SHA512].each do |algorithm|
          it "uses a #{algorithm} trailer checksum for eligible streaming requests" do
            add_streaming_request_behavior

            response = client.operation(
              streaming_blob: StringIO.new('Hello world'),
              checksum_algorithm: algorithm
            )
            request = response.context.http_request
            encoded = request.body.read

            expect(request.headers['x-amz-sdk-checksum-algorithm']).to eq(algorithm)
            expect(request.headers['x-amz-content-sha256'])
              .to eq('STREAMING-UNSIGNED-PAYLOAD-TRAILER')
            expect(request.headers['x-amz-trailer'])
              .to eq("x-amz-checksum-#{algorithm.downcase}")
            expect(request.headers['x-amz-decoded-content-length']).to eq('11')
            expect(request.headers['content-encoding']).to eq('aws-chunked')
            expect(request.headers['content-length'].to_i).to eq(encoded.bytesize)
            expect(encoded).to include(
              "x-amz-checksum-#{algorithm.downcase}:" \
              "#{checksum_for(algorithm, StringIO.new('Hello world'))}"
            )
            expect(response.context[:http_checksum][:request_algorithm])
              .to include(algorithm: algorithm, in: 'trailer')
          end
        end

        it 'buffers short source reads into valid non-final aws-chunked chunks' do
          add_streaming_request_behavior
          source = Class.new(StringIO) do
            def read(length = nil, buffer = nil)
              super([length || 3, 3].min, buffer)
            end
          end.new('z' * 20_000)

          encoded = client.operation(streaming_blob: source)
                          .context.http_request.body.read
          chunk_sizes = encoded.scan(/^([0-9a-f]+)\r$/).flatten
                               .map { |hex| hex.to_i(16) }.reject(&:zero?)

          expect(chunk_sizes[0...-1]).to all(be >= 8 * 1024)
          expect(chunk_sizes.sum).to eq(20_000)
        end

        it 'falls back to a header checksum for streaming requests over HTTP' do
          add_streaming_request_behavior
          configured = client_class.new(
            stub_responses: true,
            endpoint: 'http://example.com'
          )

          response = configured.operation(streaming_blob: StringIO.new('payload'))
          headers = response.context.http_request.headers

          expect(headers['x-amz-checksum-crc32'])
            .to eq(checksum_for('CRC32', StringIO.new('payload')))
          expect(headers['x-amz-trailer']).to be_nil
          expect(response.context[:http_checksum][:request_algorithm])
            .to include(algorithm: 'CRC32', in: 'header')
        end

        it 'does not calculate an optional checksum in when_required mode' do
          configured = client_class.new(
            **client_options,
            request_checksum_calculation: 'when_required'
          )

          response = configured.operation(string: 'payload')
          expect(response.context.http_request.headers.keys)
            .not_to include(a_string_starting_with('x-amz-checksum-'))
        end

        it 'calculates an explicitly selected checksum in when_required mode' do
          configured = client_class.new(
            **client_options,
            request_checksum_calculation: 'when_required'
          )

          response = configured.operation(string: 'payload', checksum_algorithm: 'SHA256')
          expect(response.context.http_request.headers['x-amz-checksum-sha256'])
            .to eq(checksum_for('SHA256', response.context.http_request.body))
        end

        it 'preserves all supplied checksum headers and skips calculation' do
          client_class.add_plugin(
            Class.new(Smithy::Client::Plugin) do
              handler(
                Class.new(Smithy::Client::Handler) do
                  def call(context)
                    context.http_request.headers['X-Amz-Checksum-Future'] = 'supplied'
                    context.http_request.headers['X-Amz-Checksum-Sha256'] = 'conflict'
                    @handler.call(context)
                  end
                end,
                step: :build,
                priority: 20
              )
            end
          )
          response = client.operation(
            string: 'payload',
            checksum_algorithm: 'SHA256'
          )
          headers = response.context.http_request.headers

          expect(headers['x-amz-checksum-future']).to eq('supplied')
          expect(headers['x-amz-checksum-sha256']).to eq('conflict')
          expect(headers['x-amz-sdk-checksum-algorithm']).to be_nil
          expect(response.context[:http_checksum][:request_algorithm]).to include(
            algorithm: 'FUTURE',
            supplied: true
          )
        end

        it 'preserves a supplied flexible MD5 checksum without calculating another' do
          client_class.add_plugin(header_plugin('X-Amz-Checksum-Md5', 'supplied'))
          response = client.operation(string: 'payload')

          expect(response.context.http_request.headers['x-amz-checksum-md5']).to eq('supplied')
          expect(response.context.http_request.headers['x-amz-checksum-crc32']).to be_nil
          expect(response.context.http_request.headers['x-amz-sdk-checksum-algorithm']).to be_nil
        end

        it 'does not treat checksum control headers as supplied values' do
          client_class.add_plugin(header_plugin('X-Amz-Checksum-Type', 'FULL_OBJECT'))
          response = client.operation(string: 'payload')

          expect(response.context.http_request.headers['x-amz-checksum-type']).to eq('FULL_OBJECT')
          expect(response.context.http_request.headers['x-amz-checksum-crc32']).not_to be_nil
        end

        it 'rejects unsupported selected algorithms' do
          expect do
            client.operation(string: 'payload', checksum_algorithm: 'MD5')
          end.to raise_error(ArgumentError, /MD5 is not a supported checksum algorithm/)
        end

        %w[CRC32C CRC64NVME].each do |algorithm|
          it "rejects deferred #{algorithm} support" do
            expect do
              client.operation(string: 'payload', checksum_algorithm: algorithm)
            end.to raise_error(
              ArgumentError,
              /#{algorithm} is not supported/
            )
          end
        end

        it 'sets response validation mode when supported' do
          shapes['smithy.ruby.tests#Operation']['traits']['aws.protocols#httpChecksum']
            .merge!(
              'requestValidationModeMember' => 'ChecksumMode',
              'responseAlgorithms' => ['CRC32']
            )

          response = client.operation(string: 'payload')
          expect(response.context.params[:checksum_mode]).to eq('ENABLED')
          expect(response.context.http_request.headers['x-amz-checksum-mode']).to eq('ENABLED')
        end

        it 'does not set response validation mode in when_required mode' do
          shapes['smithy.ruby.tests#Operation']['traits']['aws.protocols#httpChecksum']
            .merge!(
              'requestValidationModeMember' => 'ChecksumMode',
              'responseAlgorithms' => ['CRC32']
            )
          configured = client_class.new(
            **client_options,
            response_checksum_validation: 'when_required'
          )

          response = configured.operation(string: 'payload')
          expect(response.context.params[:checksum_mode]).to be_nil
        end

        response_cases = JSON.load_file(
          File.expand_path('checksum_response.json', __dir__)
        )

        response_cases.each do |test_case|
          it "passes response checksum case: #{test_case['documentation']}" do
            add_response_checksum_behavior(test_case['responseAlgorithms'])
            client.stub_responses(
              :operation,
              status_code: 200,
              headers: test_case['responseHeaders'],
              body: test_case['responsePayload']
            )

            if test_case.dig('expect', 'kind') == 'failure'
              message = Regexp.escape(test_case.dig('expect', 'message'))
              expect { client.operation(string: 'payload') }
                .to raise_error(
                  Aws::Core::Errors::ChecksumError,
                  /#{message}/
                )
            else
              response = client.operation(string: 'payload')
              checksum = response.context[:http_checksum]

              expect(checksum[:validation_list])
                .to eq(test_case.dig('expect', 'validationList'))
              expect(checksum[:validated])
                .to eq(test_case.dig('expect', 'validated'))
            end
          end
        end

        it 'caches response algorithm selection on the operation' do
          add_response_checksum_behavior(%w[SHA256 CRC32])
          body = '{}'
          headers = {
            'x-amz-checksum-crc32' =>
              checksum_for('CRC32', StringIO.new(body))
          }
          client.stub_responses(
            :operation,
            { status_code: 200, headers: headers, body: body },
            { status_code: 200, headers: headers, body: body }
          )

          first = client.operation(string: 'payload')
          second = client.operation(string: 'payload')

          expect(second.context[:http_checksum][:validation_list])
            .to be(first.context[:http_checksum][:validation_list])
        end

        it 'clears attempt-specific response checksum state when headers repeat' do
          add_response_checksum_behavior(%w[CRC32])
          context = client.operation(string: 'payload').context
          validator = Checksums::ResponseValidator.new(
            context,
            Extension.http_checksum(context.operation)
          ).register
          context.http_response.reset
          context.http_response.signal_headers(
            500,
            'x-amz-checksum-crc32' => checksum_for('CRC32', StringIO.new('failed'))
          )
          context.http_response.signal_data('failed')
          context.http_response.reset
          context.http_response.signal_done(
            status_code: 200,
            headers: {},
            body: 'success'
          )

          expect { validator.raise_if_failed }.not_to raise_error
          expect(context[:http_checksum][:validated]).to be_nil
        end

        it 'does not validate a checksum on a non-success response' do
          add_response_checksum_behavior(%w[CRC32])
          context = client.operation(string: 'payload').context
          validator = Checksums::ResponseValidator.new(
            context,
            Extension.http_checksum(context.operation)
          ).register
          context.http_response.reset
          context.http_response.signal_done(
            status_code: 500,
            headers: { 'x-amz-checksum-crc32' => 'bm90LWEtY2hlY2tzdW0=' },
            body: 'failed'
          )

          expect { validator.raise_if_failed }.not_to raise_error
          expect(context[:http_checksum][:validated]).to be_nil
        end

        it 'does not validate a response without an enabled validation mode' do
          add_response_checksum_behavior(%w[CRC32])
          configured = client_class.new(
            **client_options,
            response_checksum_validation: 'when_required'
          )
          configured.stub_responses(
            :operation,
            status_code: 200,
            headers: { 'x-amz-checksum-crc32' => 'AAAAAA==' },
            body: '{}'
          )

          response = configured.operation(string: 'payload')
          expect(response.context[:http_checksum][:validated]).to be_nil
        end

        it 'validates a response explicitly enabled in when_required mode' do
          add_response_checksum_behavior(%w[CRC32])
          configured = client_class.new(
            **client_options,
            response_checksum_validation: 'when_required'
          )
          body = '{}'
          configured.stub_responses(
            :operation,
            status_code: 200,
            headers: {
              'x-amz-checksum-crc32' => checksum_for('CRC32', StringIO.new(body))
            },
            body: body
          )

          response = configured.operation(
            string: 'payload',
            checksum_mode: 'ENABLED'
          )
          expect(response.context[:http_checksum][:validated]).to eq('CRC32')
        end

        it 'ignores response checksum algorithms not supported by the client' do
          add_response_checksum_behavior(%w[UNKNOWN CRC32])
          body = '{}'
          client.stub_responses(
            :operation,
            status_code: 200,
            headers: {
              'x-amz-checksum-unknown' => 'unknown',
              'x-amz-checksum-crc32' => checksum_for('CRC32', StringIO.new(body))
            },
            body: body
          )

          response = client.operation(string: 'payload')
          expect(response.context[:http_checksum][:validation_list]).to eq(%w[CRC32])
          expect(response.context[:http_checksum][:validated]).to eq('CRC32')
        end

        it 'emits configuration and request algorithm metrics' do
          response = client.operation(string: 'payload')
          user_agent = response.context.http_request.headers['user-agent']

          expect(user_agent).to include('m/Z,b,U')
        end

        def add_streaming_request_behavior
          shapes['smithy.ruby.tests#Operation']['traits']['aws.auth#unsignedPayload'] = {}
          shapes['smithy.ruby.tests#Structure']['members']['StreamingBlob'] = {
            'target' => 'smithy.ruby.tests#StreamingBlob',
            'traits' => { 'smithy.api#httpPayload' => {} }
          }
        end

        def checksum_for(algorithm, body)
          digest = Checksums.digest_for(algorithm)
          body.rewind
          digest.update(body.read)
          digest.base64digest
        ensure
          body.rewind
        end

        def add_response_checksum_behavior(algorithms)
          shapes['smithy.ruby.tests#Operation']['traits']['aws.protocols#httpChecksum']
            .merge!(
              'requestValidationModeMember' => 'ChecksumMode',
              'responseAlgorithms' => algorithms
            )
        end

        def header_plugin(name, value)
          Class.new(Smithy::Client::Plugin) do
            handler(
              Class.new(Smithy::Client::Handler) do
                define_method(:call) do |context|
                  context.http_request.headers[name] = value
                  @handler.call(context)
                end
              end,
              step: :build,
              priority: 20
            )
          end
        end
      end
    end
  end
end
