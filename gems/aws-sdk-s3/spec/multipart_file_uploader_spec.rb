# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe MultipartFileUploader do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { MultipartFileUploader.new(client: client) }
      let(:params) { { bucket: 'bucket', key: 'key' } }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          uploader = MultipartFileUploader.new
          expect(uploader.client).to be(client)
        end
      end

      describe '#upload' do
        let(:one_mb) { '.' * 1024 * 1024 }
        let(:large_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb) }
            f.rewind
          end
        end

        it 'uses multipart APIs for objects >= 100MB' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:upload_part, etag: 'etag', checksum_crc32: 'checksum')
          expect(client).to receive(:complete_multipart_upload).with(
            params.merge(
              upload_id: 'id',
              multipart_upload: {
                parts: [
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 1 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 2 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 3 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 4 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 5 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 6 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 7 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 8 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 9 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 10 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 11 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 12 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 13 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 14 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 15 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 16 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 17 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 18 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 19 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 20 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 21 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 22 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 23 },
                  { checksum_crc32: 'checksum', etag: 'etag', part_number: 24 }
                ]
              },
              mpu_object_size: large_file.size
            )
          )
          subject.upload(large_file, params.merge(content_type: 'text/plain'))
        end

        it 'allows for full object checksums' do
          expect(client).to receive(:create_multipart_upload)
            .with(params.merge(checksum_algorithm: 'CRC32', checksum_type: 'FULL_OBJECT', content_type: 'text/plain'))
            .and_call_original
          expect(client).to receive(:upload_part)
            .with(hash_not_including(checksum_crc32: anything))
            .exactly(24).times
            .and_call_original
          expect(client).to receive(:complete_multipart_upload)
            .with(hash_including(checksum_type: 'FULL_OBJECT', checksum_crc32: 'checksum'))
            .and_call_original

          subject.upload(large_file, params.merge(content_type: 'text/plain', checksum_crc32: 'checksum'))
        end

        it 'reports progress for multipart uploads' do
          allow(Thread).to receive(:new).and_yield.and_return(double(value: nil))
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          expect(client).to receive(:upload_part).exactly(24).times do |args|
            args[:on_chunk_sent].call(args[:body], args[:body].size, args[:body].size)
            double(context: double(params: { checksum_algorithm: 'crc32' }), checksum_crc32: 'checksum', etag: 'etag')
          end
          callback = proc do |bytes, totals|
            expect(bytes.size).to eq(24)
            expect(totals.size).to eq(24)
          end

          subject.upload(large_file, params.merge(content_type: 'text/plain', progress_callback: callback))
        end

        it 'raises when given a file smaller than 5MB' do
          file = Tempfile.new('one-meg-file').tap do |f|
            f.write(one_mb)
            f.rewind
          end

          expect { subject.upload(file, params) }
            .to raise_error(ArgumentError, /unable to multipart upload files smaller than 5MB/)
        end

        it 'automatically deletes failed multipart upload on error' do
          allow_any_instance_of(FilePart).to receive(:read).and_return(nil)
          client.stub_responses(
            :upload_part,
            [
              { etag: 'etag-1' },
              { etag: 'etag-2' },
              RuntimeError.new('part 3 failed'),
              { etag: 'etag-4' }
            ]
          )

          expect(client).to receive(:abort_multipart_upload).with(params.merge(upload_id: 'MultipartUploadId'))
          expect { subject.upload(large_file, params) }.to raise_error(/multipart upload failed: part 3 failed/)
        end

        it 'reports when it is unable to abort a failed multipart upload' do
          allow(Thread).to receive(:new) do |_, &block|
            double(value: block.call)
          end

          client.stub_responses(
            :upload_part,
            [
              { etag: 'etag-1' },
              { etag: 'etag-2' },
              { etag: 'etag-3' },
              RuntimeError.new('part failed')
            ]
          )
          client.stub_responses(:abort_multipart_upload, [RuntimeError.new('network-error')])
          expect do
            subject.upload(large_file, params)
          end.to raise_error(/failed to abort multipart upload: network-error. Multipart upload failed: part failed/)

        end

        it 'aborts multipart upload when upload fails to complete' do
          client.stub_responses(:complete_multipart_upload, RuntimeError.new('network-error'))

          expect(client).to receive(:abort_multipart_upload).with(params.merge(upload_id: 'MultipartUploadId'))
          expect { subject.upload(large_file, params) }.to raise_error(Aws::S3::MultipartUploadError)
        end
      end
    end
  end
end

