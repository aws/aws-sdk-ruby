# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }

      describe '#upload_file' do
        let(:expected_params) { { bucket: 'bucket', key: 'key' } }
        let(:one_meg) { 1024 * 1024 }
        let(:object) { S3::Object.new(bucket_name: 'bucket', key: 'key', client: client) }
        let(:one_mb) { '.' * 1024 * 1024 }

        let(:one_meg_file) do
          Tempfile.new('one-meg-file').tap do |f|
            f.write(one_mb)
            f.rewind
          end
        end

        let(:ten_meg_file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb) }
            f.rewind
          end
        end

        let(:one_hundred_seventeen_meg_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb) }
            f.rewind
          end
        end

        it 'uploads objects with custom options without mutating them' do
          options = {}.freeze
          expect(client).to receive(:put_object).with(expected_params.merge(body: one_meg_file))
          object.upload_file(one_meg_file, options)
        end

        it 'yields the response to the given block' do
          object.upload_file(ten_meg_file) do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        it 'uploads a small object' do
          expect(client).to receive(:put_object).with(expected_params.merge(body: ten_meg_file))
          object.upload_file(ten_meg_file)
        end

        it 'uploads a large object' do
          expect(client).to receive(:complete_multipart_upload).with(
            expected_params.merge(
              upload_id: 'id',
              multipart_upload: {
                parts: [
                  { checksum_crc32: 'part', etag: 'etag', part_number: 1 },
                  { checksum_crc32: 'part', etag: 'etag', part_number: 2 }
                ]
              },
              mpu_object_size: ten_meg_file.size
            )
          )
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:upload_part, etag: 'etag', checksum_crc32: 'part')
          object.upload_file(ten_meg_file, multipart_threshold: 5 * one_meg)
        end

        it 'accepts an alternative multipart file threshold' do
          expect(client).to receive(:put_object).with(expected_params.merge(body: one_hundred_seventeen_meg_file))
          object.upload_file(one_hundred_seventeen_meg_file, multipart_threshold: 200 * one_meg)
        end
      end
    end
  end
end
