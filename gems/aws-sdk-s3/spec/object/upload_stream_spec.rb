# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { S3::Object.new(bucket_name: 'bucket', key: 'key', client: client) }

      describe '#upload_stream', :jruby_flaky do
        let(:params) { { bucket: 'bucket', key: 'key' } }
        let(:seventeen_mb) { '.' * 1024 * 1024 * 17 }

        it 'returns true when succeeds' do
          resp = subject.upload_stream(content_type: 'text/plain') { |write_stream| write_stream << seventeen_mb }
          expect(resp).to be(true)
        end

        it 'raises when errors' do
          client.stub_responses(:upload_part, RuntimeError.new('part failed'))
          expect do
            subject.upload_stream { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(Aws::S3::MultipartUploadError, /part failed/)
        end

        it 'respects the thread_count option' do
          custom_thread_count = 20
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          expect(DefaultExecutor).to receive(:new).with(max_threads: custom_thread_count).and_call_original
          subject.upload_stream(thread_count: custom_thread_count) { |_write_stream| }
        end

        it 'respects the tempfile option' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          4.times.each do |p|
            expect(client)
              .to receive(:upload_part)
              .with(params.merge(upload_id: 'id', body: instance_of(Tempfile), part_number: p + 1))
              .once
              .and_return(double(:upload_part, etag: 'etag'))
          end
          subject.upload_stream(tempfile: true) { |write_stream| write_stream << seventeen_mb }
        end
      end
    end
  end
end
