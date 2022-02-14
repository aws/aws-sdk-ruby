# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      RSpec::Matchers.define :file_part do |expected|
        match do |actual|
          actual.source == expected[:source] &&
            actual.first_byte == expected[:offset] &&
            actual.last_byte == expected[:offset] + expected[:size] &&
            actual.size == expected[:size]
        end
      end

      let(:client) { S3::Client.new(stub_responses: true) }

      describe '#upload_file' do
        let(:one_meg) { 1024 * 1024 }

        let(:object) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'key',
            client: client
          )
        end

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
          expect(client).to receive(:put_object).with({
            bucket: 'bucket',
            key: 'key',
            body: one_meg_file
          })
          object.upload_file(one_meg_file, options)
        end

        it 'yields the response to the given block' do
          object.upload_file(ten_meg_file) do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        context 'small objects' do
          it 'uploads small objects using Client#put_object' do
            expect(client).to receive(:put_object).with({
              bucket: 'bucket',
              key: 'key',
              body: ten_meg_file
            })
            object.upload_file(ten_meg_file)
          end

          it 'reports progress for small objects' do
            expect(client).to receive(:put_object).with({
              bucket: 'bucket',
              key: 'key',
              body: ten_meg_file,
              on_chunk_sent: instance_of(Proc)
            }) do |args|
              args[:on_chunk_sent].call(ten_meg_file, ten_meg_file.size, ten_meg_file.size)
            end
            callback = proc do |bytes, totals|
              expect(bytes).to eq([ten_meg_file.size])
              expect(totals).to eq([ten_meg_file.size])
            end
            object.upload_file(ten_meg_file, progress_callback: callback)
          end

          it 'accepts an alternative multipart file threshold' do
            expect(client).to receive(:put_object).with({
              bucket: 'bucket',
              key: 'key',
              body: one_hundred_seventeen_meg_file
            })
            object.upload_file(
              one_hundred_seventeen_meg_file,
              multipart_threshold: 200 * one_meg
            )
          end

          it 'accepts paths to files to upload' do
            file = double('file')
            expect(File).to receive(:open)
              .with(ten_meg_file.path, 'rb').and_yield(file)
            expect(client).to receive(:put_object).with({
              bucket: 'bucket',
              key: 'key',
              body: file
            })
            object.upload_file(ten_meg_file.path)
          end

          it 'does not fail when given :thread_count' do
            expect(client).to receive(:put_object).with({
              bucket: 'bucket',
              key: 'key',
              body: ten_meg_file
            })
            object.upload_file(ten_meg_file, thread_count: 1)
          end
        end

        context 'large objects' do
          it 'uses multipart APIs for objects >= 100MB' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:upload_part, etag: 'etag')
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
                  { etag: 'etag', part_number: 5 },
                  { etag: 'etag', part_number: 6 },
                  { etag: 'etag', part_number: 7 },
                  { etag: 'etag', part_number: 8 },
                  { etag: 'etag', part_number: 9 },
                  { etag: 'etag', part_number: 10 },
                  { etag: 'etag', part_number: 11 },
                  { etag: 'etag', part_number: 12 },
                  { etag: 'etag', part_number: 13 },
                  { etag: 'etag', part_number: 14 },
                  { etag: 'etag', part_number: 15 },
                  { etag: 'etag', part_number: 16 },
                  { etag: 'etag', part_number: 17 },
                  { etag: 'etag', part_number: 18 },
                  { etag: 'etag', part_number: 19 },
                  { etag: 'etag', part_number: 20 },
                  { etag: 'etag', part_number: 21 },
                  { etag: 'etag', part_number: 22 },
                  { etag: 'etag', part_number: 23 },
                  { etag: 'etag', part_number: 24 }
                ]
              }
            )
            object.upload_file(one_hundred_seventeen_meg_file, content_type: 'text/plain')
          end

          it 'reports progress for multipart uploads' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:complete_multipart_upload)
            expect(client).to receive(:upload_part).exactly(24).times do |args|
              args[:on_chunk_sent].call(args[:body], args[:body].size, args[:body].size)
              double(etag: 'etag')
            end
            callback = proc do |bytes, totals|
              expect(bytes.size).to eq(24)
              expect(totals.size).to eq(24)
            end
            object.upload_file(one_hundred_seventeen_meg_file, content_type: 'text/plain', progress_callback: callback)
          end

          it 'raises an error if the multipart threshold is too small' do
            error_msg = 'unable to multipart upload files smaller than 5MB'
            expect do
              object.upload_file(one_meg_file, multipart_threshold: one_meg)
            end.to raise_error(ArgumentError, error_msg)
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

            expect(client).to receive(:abort_multipart_upload).with(
              bucket: 'bucket',
              key: 'key',
              upload_id: 'MultipartUploadId'
            )

            expect do
              object.upload_file(one_hundred_seventeen_meg_file)
            end.to raise_error('multipart upload failed: part 3 failed')
          end

          it 'reports when it is unable to abort a failed multipart upload' do
            client.stub_responses(
              :upload_part,
              [
                { etag: 'etag-1' },
                { etag: 'etag-2' },
                { etag: 'etag-3' },
                RuntimeError.new('part failed')
              ]
            )
            client.stub_responses(
              :abort_multipart_upload,
              [RuntimeError.new('network-error')]
            )
            expect { object.upload_file(one_hundred_seventeen_meg_file) }.to raise_error(
              S3::MultipartUploadError,
              'failed to abort multipart upload: network-error'
            )
          end
        end
      end
    end
  end
end
