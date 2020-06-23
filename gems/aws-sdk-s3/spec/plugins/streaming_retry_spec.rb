# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Plugins
      describe StreamingRetry do

        let(:creds) { Aws::Credentials.new('akid', 'secert') }
        let(:client) { S3::Client.new(region: 'us-east-1', credentials: creds, retry_base_delay: 0.001) }

        it 'retries a failed request with range set' do
          parts = ["data_part_1", "longer_data_at_end_part2"]
          full_test_data = parts.join

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .to_return(:status => 200, :body => parts[0], :headers => {'content-length' => full_test_data.bytesize} )

          # second request, on retry should have range
          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: {'range' => "bytes=#{parts[0].bytesize}-"})
            .to_return(:status => 200, :body => parts[1], :headers => {'content-length' => parts[1].bytesize} )

          output = StringIO.new
          client.get_object(key: 'test', bucket: 'test-bucket') { |chunk| output.write(chunk) }
          output.rewind
          expect(output.read).to eq(full_test_data)
        end

        it 'retries multiple requests with range set' do
          parts = ["data_part_1", "part2", "longer_data_at_end_part3"]
          full_test_data = parts.join

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .to_return(:status => 200, :body => parts[0], :headers => {'content-length' => full_test_data.bytesize} )

          # second request, on retry should have range
          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: {'range' => "bytes=#{parts[0].bytesize}-"})
            .to_return(:status => 200, :body => parts[1], :headers => {'content-length' => (parts[1] + parts[2]).bytesize} )

          stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
            .with(headers: {'range' => "bytes=#{(parts[0] + parts[1]).bytesize}-"})
            .to_return(:status => 200, :body => parts[2], :headers => {'content-length' => parts[2].bytesize} )

          output = StringIO.new
          client.get_object(key: 'test', bucket: 'test-bucket') { |chunk| output.write(chunk) }
          output.rewind
          expect(output.read).to eq(full_test_data)
        end

        context 'range is set in initial request' do
          it 'does not retry' do
            parts = ["data_part_1", "longer_data_at_end_part2"]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(:status => 200, :body => parts[0], :headers => {'content-length' => full_test_data.bytesize} )

            output = StringIO.new
            expect do
              client.get_object(key: 'test', bucket: 'test-bucket', range: "bytes=1-") { |chunk| output.write(chunk) }
            end.to raise_error(Seahorse::Client::NetworkingError)
            output.rewind
            expect(output.read).to eq(parts[0])
          end
        end

        context 'response_target is not set' do
          it 'retries normally and does not set range' do
            parts = ["data_part_1", "longer_data_at_end_part2"]
            full_test_data = parts.join

            stub_request(:get, 'https://test-bucket.s3.amazonaws.com/test')
              .to_return(:status => 200, :body => parts[0], :headers => {'content-length' => full_test_data.bytesize} ).then
              .to_return(:status => 200, :body => full_test_data, :headers => {'content-length' => full_test_data.bytesize} )

            resp = client.get_object(key: 'test', bucket: 'test-bucket')
            expect(resp.body.read).to eq(full_test_data)
          end
        end

      end
    end
  end
end
