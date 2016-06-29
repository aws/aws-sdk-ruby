require_relative '../spec_helper'

module Aws
  module S3
    describe MultipartUpload do
      describe '#complete' do

        let(:client) { S3::Client.new(stub_responses:true) }

        let(:upload) { MultipartUpload.new('bucket', 'key', 'id', client: client) }

        it 'calls complete with the given part list' do
          expect(client).to receive(:complete_multipart_upload).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            multipart_upload: {
              parts: [
                { part_number: 1, etag: 'etag-1' },
                { part_number: 2, etag: 'etag-2' },
                { part_number: 3, etag: 'etag-3' },
              ]
            }
          )
          obj = upload.complete(multipart_upload: {
            parts: [
              { part_number: 1, etag: 'etag-1' },
              { part_number: 2, etag: 'etag-2' },
              { part_number: 3, etag: 'etag-3' },
            ]
          })
          expect(obj).to be_kind_of(S3::Object)
          expect(obj.bucket_name).to eq('bucket')
          expect(obj.key).to eq('key')
          expect(obj.client).to be(upload.client)
        end

        it 'computes the part list when instructed' do

          client.stub_responses(:list_parts, {
            parts: [
              { part_number: 1, etag: 'etag-1' },
              { part_number: 2, etag: 'etag-2' },
              { part_number: 3, etag: 'etag-3' },
            ]
          })

          expect(client).to receive(:complete_multipart_upload).with(
            bucket: 'bucket',
            key: 'key',
            upload_id: 'id',
            multipart_upload: {
              parts: [
                { part_number: 1, etag: 'etag-1' },
                { part_number: 2, etag: 'etag-2' },
                { part_number: 3, etag: 'etag-3' },
              ]
            }
          ).and_call_original

          obj = upload.complete(compute_parts: true)
          expect(obj).to be_kind_of(S3::Object)
          expect(obj.bucket_name).to eq('bucket')
          expect(obj.key).to eq('key')
          expect(obj.client).to be(upload.client)
        end

      end
    end
  end
end
