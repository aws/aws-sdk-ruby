# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }

      describe '#upload_stream', :jruby_flaky do
        let(:object) { S3::Object.new(bucket_name: 'bucket', key: 'key', client: client) }
        let(:params) { { bucket: 'bucket', key: 'key' } }
        let(:one_mb) { '.' * 1024 * 1024 }
        let(:seventeen_mb) { one_mb * 17 }

        it 'uploads stream' do
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
                { etag: 'etag', part_number: 4 }
              ]
            }
          ).once
          object.upload_stream(content_type: 'text/plain') { |write_stream| write_stream << seventeen_mb }
        end

        it 'respects the thread_count option' do
          custom_thread_count = 20
          expect(Thread).to receive(:new).exactly(custom_thread_count).times.and_return(double(value: nil))
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          object.upload_stream(thread_count: custom_thread_count) { |_write_stream| }
        end

        it 'respects the tempfile option' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:upload_part, etag: 'etag')
          expect(client).to receive(:complete_multipart_upload).with(
            params.merge(
              upload_id: 'id',
              multipart_upload: {
                parts: [
                  { etag: 'etag', part_number: 1 },
                  { etag: 'etag', part_number: 2 },
                  { etag: 'etag', part_number: 3 },
                  { etag: 'etag', part_number: 4 }
                ]
              }
            )
          ).once
          object.upload_stream(tempfile: true) { |write_stream| write_stream << seventeen_mb }
        end

        it 'uploads correct parts when chunked with custom part_size' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          3.times.each do |p|
            expect(client)
              .to receive(:upload_part)
              .with(params.merge(upload_id: 'id', body: instance_of(StringIO), part_number: p + 1))
              .once
              .and_return(double(:upload_part, etag: 'etag'))
          end

          object.upload_stream(part_size: 7 * 1024 * 1024) do |write_stream|
            17.times { write_stream << one_mb }
          end
        end

        it 'passes stringios with correct contents with custom part_size' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          result = []
          mutex = Mutex.new
          allow(client).to receive(:upload_part) do |part|
            mutex.synchronize { result << [part[:part_number], part[:body].read.size] }
          end.and_return(double(:upload_part, etag: 'etag'))

          object.upload_stream(part_size: 7 * 1024 * 1024) do |write_stream|
            17.times { write_stream << one_mb }
          end
          expect(result.sort_by(&:first)).to eq(
            [
              [1, 7 * 1024 * 1024],
              [2, 7 * 1024 * 1024],
              [3, 3 * 1024 * 1024]
            ]
          )
        end
      end
    end
  end
end
