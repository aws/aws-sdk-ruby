require 'spec_helper'
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

        let(:object) {
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'key',
            client: client
          )
        }

        let(:one_meg_file) { Tempfile.new('ten-meg-file') }

        let(:ten_meg_file) { Tempfile.new('ten-meg-file') }

        let(:seventeen_meg_file) { Tempfile.new('ten-meg-file') }

        before(:each) do
          allow(File).to receive(:size).with(one_meg_file).and_return(one_meg)
          allow(File).to receive(:size).with(ten_meg_file).and_return(10 * one_meg)
          allow(File).to receive(:size).with(ten_meg_file.path).and_return(10 * one_meg)
          allow(File).to receive(:size).with(seventeen_meg_file).and_return(17 * one_meg)
        end

        describe 'small objects' do

          it 'uploads small objects using Client#put_object' do
            expect(client).to receive(:put_object).with(
              bucket: 'bucket',
              key: 'key',
              body: ten_meg_file)
            object.upload_file(ten_meg_file)
          end

          it 'accepts an alterative multipart file threshold' do
            expect(client).to receive(:put_object).with(
              bucket: 'bucket',
              key: 'key',
              body: seventeen_meg_file)
            object.upload_file(seventeen_meg_file,
              multipart_threshold: 20 * one_meg)
          end

          it 'accepts paths to files to upload' do
            file = double('file')
            expect(File).to receive(:open).with(ten_meg_file.path, 'rb').
              and_return(file)
            expect(file).to receive(:close)
            expect(client).to receive(:put_object).with(
              bucket: 'bucket',
              key: 'key',
              body: file)
            object.upload_file(ten_meg_file.path)
          end

        end

        describe 'large objects' do

          it 'uses multipart APIs for objects >= 15MB' do
            called = []
            client.handle_request do |context|
              called << context.operation_name
            end
            object.upload_file(seventeen_meg_file, content_type: 'text/plain')
            expect(called).to eq([
              :create_multipart_upload,
              :upload_part,
              :upload_part,
              :upload_part,
              :upload_part,
              :complete_multipart_upload
            ])
          end

          it 'raises an error if the multipart threshold is too small' do
            error_msg = 'unable to multipart upload files smaller than 5MB'
            expect {
              object.upload_file(one_meg_file, multipart_threshold: one_meg)
            }.to raise_error(ArgumentError, error_msg)
          end

          it 'automatically deletes failed multipart upload on error' do

            allow_any_instance_of(FilePart).to receive(:read).and_return(nil)

            client.stub_responses(:upload_part, [
              { etag: 'etag-1' },
              { etag: 'etag-2' },
              RuntimeError.new('part 3 failed'),
              { etag: 'etag-4' },
            ])

            expect(client).to receive(:abort_multipart_upload).
              with(bucket: 'bucket', key: 'key', upload_id: 'MultipartUploadId')

            expect {
              object.upload_file(seventeen_meg_file)
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
              object.upload_file(seventeen_meg_file)
            }.to raise_error(S3::MultipartUploadError, 'failed to abort multipart upload: network-error')
          end

        end
      end
    end
  end
end
