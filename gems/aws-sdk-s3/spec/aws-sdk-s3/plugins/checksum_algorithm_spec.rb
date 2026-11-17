# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module S3
    module Plugins
      describe ChecksumAlgorithm do
        let(:client_options) do
          {
            region: 'us-east-1',
            stub_responses: true
          }
        end

        it 'skips SEP whole multipart checksums with a part-count suffix' do
          client = Client.new(**client_options)
          client.stub_responses(
            :get_object,
            status_code: 200,
            headers: { 'x-amz-checksum-crc32' => 'AAAAAA==-2' },
            body: 'payload'
          )

          response = client.get_object(
            bucket: 'bucket',
            key: 'key',
            checksum_mode: 'ENABLED'
          )

          expect(response.context[:http_checksum][:skip_on_suffix]).to be(true)
          expect(response.context[:http_checksum][:validated]).to be_nil
        end

        it 'preserves the V3 trailer fallback for an explicit custom endpoint' do
          client = Client.new(
            **client_options,
            endpoint: 'https://example.com'
          )

          response = client.put_object(
            bucket: 'bucket',
            key: 'key',
            body: 'payload'
          )

          expect(response.context[:skip_trailer_checksums]).to be(true)
        end

        it 'allows trailer checksums with the default endpoint provider' do
          client = Client.new(**client_options)

          response = client.put_object(
            bucket: 'bucket',
            key: 'key',
            body: 'payload'
          )

          expect(response.context[:skip_trailer_checksums]).to be_nil
        end
      end
    end
  end
end
