# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Plugins
    describe ChecksumAlgorithm do
      let(:creds) { Aws::Credentials.new('akid', 'secret') }
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:bucket) { 'bucket' }
      let(:key) { 'key' }

      let(:body) { 'hello world' }
      let(:digest) { 'DUoRhQ==' }

      let(:body_part_1) { 'hello '}
      let(:digest_part_1) { '7YH59g==' }

      it 'validates the checksum on an Object GET' do
        client.stub_responses(
          :get_object,
          [{
            body: body,
            headers: { 'x-amz-checksum-crc32' => digest },
            status_code: 200
          }]
        )
        resp = client.get_object(bucket: bucket, key: key)
        expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
      end

      it 'raises when the checksum does not match on an Object GET' do
        client.stub_responses(
          :get_object,
          [{
            body: body,
            headers: { 'x-amz-checksum-crc32' => 'invalid_value' },
            status_code: 200
          }]
        )
        expect do
          client.get_object(bucket: bucket, key: key)
        end.to raise_error(Aws::Errors::ChecksumError)
      end

      it 'validates the checksum on a range GET matching the part boundary' do
        client.stub_responses(
          :get_object,
          [{
            body: body_part_1,
            headers: { 'x-amz-checksum-crc32' => digest_part_1 },
            status_code: 200
          }]
        )
        resp = client.get_object(bucket: bucket, key: key, range: 'bytes=0-6')
        expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
      end

      it 'validates the checksum on a single part GET' do
        client.stub_responses(
          :get_object,
          [{
            body: body_part_1,
            headers: { 'x-amz-checksum-crc32' => digest_part_1 },
            status_code: 200
          }]
        )
        resp = client.get_object(bucket: bucket, key: key, part_number: 1)
        expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
      end

      it 'validates before any mutation of response target' do
        client.stub_responses(
          :get_object,
          [{
             body: body,
             headers: {'x-amz-checksum-crc32' => digest},
             status_code: 200
           }]
        )
        resp = client.get_object(bucket: bucket, key: key) do |chunk|
          chunk.upcase!
        end
        expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
      end

      context 'checksum response composite validation' do
        file = File.expand_path('checksum_response_composite.json', __dir__)
        test_cases = JSON.load_file(file)

        test_cases.each do |test_case|
          it "passes test: #{test_case['documentation']}" do
            if (algorithm = test_case['checksumAlgorithm'])
              algorithm.upcase!
              unless Aws::Plugins::ChecksumAlgorithm::CLIENT_ALGORITHMS.include?(algorithm)
                skip "Algorithm #{algorithm} not supported"
              end
            end

            client.stub_responses(
              :get_object,
              [{
                body: test_case['responsePayload'],
                headers: test_case['responseHeaders'],
                status_code: 200
              }]
            )
            resp = client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED')
            expect(resp.context[:http_checksum][:validated]).to be_nil
          end
        end
      end

      context 'request trailer checksum', skip: defined?(JRUBY_VERSION) do
        it 'sets aws-chunked when no existing Content-Encoding header' do
          resp = client.put_object(bucket: bucket, key: key, body: body)
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('aws-chunked')
        end

        it 'appends aws-chunked to existing Content-Encoding header' do
          resp = client.put_object(bucket: bucket, key: key, body: body, content_encoding: 'gzip')
          expect(resp.context.http_request.headers['Content-Encoding']).to eq('gzip, aws-chunked')
        end
      end

      context 'AwsChunkedTrailerDigestIO' do
        let(:subject) do
          ChecksumAlgorithm::AwsChunkedTrailerDigestIO.new(
            io: StringIO.new('x' * (32 * 1024)),
            algorithm: 'CRC32',
            location_name: 'x-amz-checksum-crc32'
          )
        end

        describe '#size' do
          it 'matches actual read output length' do
            expect(subject.size).to eq(subject.read.bytesize)
          end

          it 'returns zero bytes for empty content' do
            expected_empty_trailer = "0\r\nx-amz-checksum-crc32:AAAAAA==\r\n\r\n".bytesize
            subject = ChecksumAlgorithm::AwsChunkedTrailerDigestIO.new(
              io: StringIO.new(''),
              algorithm: 'CRC32',
              location_name: 'x-amz-checksum-crc32'
            )
            expect(subject.size).to eq(expected_empty_trailer)
          end
        end

        describe '#read' do
          it 'returns full chunked output when no length given' do
            output = subject.read
            expect(output.scan("3ff8\r\n").length).to eq(2)
            expect(output).to end_with("0\r\nx-amz-checksum-crc32:uj4bwQ==\r\n\r\n")
          end

          it 'returns partial data when length specified' do
            partial = subject.read(10)
            expect(partial.bytesize).to eq(10)
            expect(partial).to start_with("3ff8\r\n")
          end

          it 'maintains content integrity across mixed read patterns' do
            chunks = []
            # Read in random chunks until EOF
            while (chunk = subject.read(rand(100..2000)))
              chunks << chunk
            end

            subject.rewind
            expect(chunks.join).to eq(subject.read)
          end
        end

        describe '#rewind' do
          it 'resets position to beginning' do
            first_read = subject.read(100)
            subject.rewind
            second_read = subject.read(100)

            expect(first_read).to eq(second_read)
          end
        end

        describe '#eof?' do
          it 'returns false at start of IO' do
            expect(subject.eof?).to be false
          end

          it 'returns true after reading all data' do
            subject.read
            expect(subject.eof?).to be true
          end
        end
      end
    end
  end
end
