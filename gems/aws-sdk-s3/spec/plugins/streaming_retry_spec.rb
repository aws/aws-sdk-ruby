# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Plugins
      describe StreamingRetry do
        let(:creds) { Aws::Credentials.new('akid', 'secret') }
        let(:client) { S3::Client.new(region: 'us-east-1', credentials: creds, retry_base_delay: 0.001) }
        let(:output) { StringIO.new }
        let(:request) { { key: 'test', bucket: 'test-bucket' } }

        def stream_to_output
          client.get_object(request) { |chunk| output.write(chunk) }
          output.rewind
        end

        it 'retries a failed request with range set' do
          parts = %w[data_part_1 longer_data_at_end_part2]
          full_test_data = parts.join

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

          # second request, on retry should have range
          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: { 'range' => "bytes=#{parts[0].bytesize}-" })
            .to_return(status: 200, body: parts[1], headers: { 'content-length' => parts[1].bytesize })

          stream_to_output

          expect(output.read).to eq(full_test_data)
        end

        it 'retries multiple requests with range set' do
          parts = %w[data_part_1 part2 longer_data_at_end_part3]
          full_test_data = parts.join

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

          # second request, on retry should have range
          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: { 'range' => "bytes=#{parts[0].bytesize}-" })
            .to_return(status: 200, body: parts[1], headers: { 'content-length' => (parts[1] + parts[2]).bytesize })

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: { 'range' => "bytes=#{(parts[0] + parts[1]).bytesize}-" })
            .to_return(status: 200, body: parts[2], headers: { 'content-length' => parts[2].bytesize })

          stream_to_output
          expect(output.read).to eq(full_test_data)
        end

        it 'handles an error after an initial retry' do
          parts = %w[data_part_1 longer_data_at_end_part2]
          full_test_data = parts.join

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

          # second request, on retry should have range
          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: { 'range' => "bytes=#{parts[0].bytesize}-" })
            .to_return(status: 500, body: 'error message')

          expect do
            stream_to_output
          end.to raise_error(Errors::Http500Error)
          output.rewind
          expect(output.read).to eq(parts[0])
        end

        context 'range is set in initial request' do
          let(:request) { {key: 'test', bucket: 'test-bucket', range: 'bytes=1-'} }

          it 'does not retry' do
            parts = %w[data_part_1 longer_data_at_end_part2]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

            expect do
              stream_to_output
            end.to raise_error(Seahorse::Client::NetworkingError)
            output.rewind
            expect(output.read).to eq(parts[0])
          end
        end

        context 'response_target is not set' do
          it 'retries normally and does not set range' do
            parts = %w[data_part_1 longer_data_at_end_part2]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize }).then
              .to_return(status: 200, body: full_test_data, headers: { 'content-length' => full_test_data.bytesize })

            resp = client.get_object(key: 'test', bucket: 'test-bucket')
            expect(resp.body.read).to eq(full_test_data)
          end
        end

        context 'response_target is a file' do
          let(:tempfile) { Tempfile.new('test') }
          let(:request) { {key: 'test', bucket: 'test-bucket', response_target: tempfile.path} }

          it 'retries multiple requests with range set' do
            parts = %w[data_part_1 part2 longer_data_at_end_part3]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

            # second request, on retry should have range
            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .with(headers: { 'range' => "bytes=#{parts[0].bytesize}-" })
              .to_return(status: 200, body: parts[1], headers: { 'content-length' => (parts[1] + parts[2]).bytesize })

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .with(headers: { 'range' => "bytes=#{(parts[0] + parts[1]).bytesize}-" })
              .to_return(status: 200, body: parts[2], headers: { 'content-length' => parts[2].bytesize })

            client.get_object(request)
            expect(File.read(tempfile.path)).to eq(full_test_data)
          end

          it 'handles an error after an initial retry' do
            parts = %w[data_part_1 longer_data_at_end_part2]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(status: 200, body: parts[0], headers: { 'content-length' => full_test_data.bytesize })

            # second request, on retry should have range
            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .with(headers: { 'range' => "bytes=#{parts[0].bytesize}-" })
              .to_return(status: 500, body: 'error message')

            expect do
              client.get_object(request)
            end.to raise_error(Errors::Http500Error)
            output.rewind
            expect(File.read(tempfile.path)).to eq(parts[0])
          end
        end
      end
    end
  end
end
