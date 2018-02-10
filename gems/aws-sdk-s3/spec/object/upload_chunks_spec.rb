require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }

      describe '#upload_chunks' do

        let(:object) {
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'key',
            client: client
          )
        }

        let(:one_mb) { '.' * 1024 * 1024 }

        let(:ten_mb) {
          one_mb * 10
        }

        let(:seventeen_mb) {
          one_mb * 17
        }

        it 'uses multipart APIs' do
          client.stub_responses(:create_multipart_upload, upload_id:'id')
          client.stub_responses(:upload_part, etag:'etag')
          expect(client).to receive(:complete_multipart_upload).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            multipart_upload: {
              parts: [
                { etag: 'etag', part_number: 1 },
                { etag: 'etag', part_number: 2 },
                { etag: 'etag', part_number: 3 },
                { etag: 'etag', part_number: 4 },
              ]
            }
          ).once
          object.upload_chunks(content_type: 'text/plain') do |write_stream|
            write_stream << seventeen_mb
          end
        end

        it 'uploads the correct parts' do
          client.stub_responses(:create_multipart_upload, upload_id:'id')
          client.stub_responses(:complete_multipart_upload)
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 1,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 2,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 3,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 2,
            part_number: 4,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          object.upload_chunks do |write_stream|
            write_stream << seventeen_mb
          end
        end

        it 'uploads the correct parts when input is chunked' do
          client.stub_responses(:create_multipart_upload, upload_id:'id')
          client.stub_responses(:complete_multipart_upload)
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 1,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 2,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 5,
            part_number: 3,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          expect(client).to receive(:upload_part).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            body: one_mb * 2,
            part_number: 4,
          ).once.and_return(double(:upload_part, etag: 'etag'))
          object.upload_chunks do |write_stream|
            17.times { write_stream << one_mb }
          end
        end

        it 'automatically deletes failed multipart upload on error' do
          client.stub_responses(:upload_part, [
            { etag: 'etag-1' },
            { etag: 'etag-2' },
            RuntimeError.new('part 3 failed'),
            { etag: 'etag-4' },
          ])

          expect(client).to receive(:abort_multipart_upload).
            with(bucket: 'bucket', key: 'key', upload_id: 'MultipartUploadId')

          expect {
            object.upload_chunks do |write_stream|
              write_stream << seventeen_mb
            end
          }.to raise_error('multipart upload failed: part 3 failed')
        end

        it 'reports when it is unable to abort a failed multipart upload' do
          client.stub_responses(:upload_part, [
            { etag: 'etag-1' },
            { etag: 'etag-2' },
            { etag: 'etag-3' },
            RuntimeError.new('part failed'),
          ])
          client.stub_responses(:abort_multipart_upload, [
            RuntimeError.new('network-error'),
          ])
          expect {
            object.upload_chunks do |write_stream|
              write_stream << seventeen_mb
            end
          }.to raise_error(S3::MultipartUploadError, 'failed to abort multipart upload: network-error')
        end
      end
    end
  end
end
