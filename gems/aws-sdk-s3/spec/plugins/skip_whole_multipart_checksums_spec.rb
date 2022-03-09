# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Plugins
      describe SkipWholeMultipartGetChecksums do
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
               headers: {'x-amz-checksum-crc32' => digest},
               status_code: 200
             }])
          resp = client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
        end

        it 'raises when the checksum does not match on an Object GET' do
          client.stub_responses(
            :get_object,
            [{
               body: body,
               headers: {'x-amz-checksum-crc32' => 'invalid_value'},
               status_code: 200
             }])
          expect do
            client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED')
          end.to raise_error(Aws::Errors::ChecksumError)
        end

        it 'validates the checksum on a range GET matching the part boundary' do
          client.stub_responses(
            :get_object,
            [{
               body: body_part_1,
               headers: {'x-amz-checksum-crc32' => digest_part_1},
               status_code: 200
             }])
          resp = client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED', range: "bytes=0-6")
          expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
        end

        it 'validates the checksum on a single part GET' do
          client.stub_responses(
            :get_object,
            [{
               body: body_part_1,
               headers: {'x-amz-checksum-crc32' => digest_part_1},
               status_code: 200
             }])
          resp = client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED', part_number: 1)
          expect(resp.context[:http_checksum][:validated]).to eq 'CRC32'
        end

        it 'does not validate on a whole multipart GET' do
          client.stub_responses(
            :get_object,
            [{
               body: body,
               headers: {'x-amz-checksum-crc32' => 'cpjwid==-12'},
               status_code: 200
             }])
          resp = client.get_object(bucket: bucket, key: key, checksum_mode: 'ENABLED')
          expect(resp.context[:http_checksum][:validated]).to be_nil
        end
      end
    end
  end
end
