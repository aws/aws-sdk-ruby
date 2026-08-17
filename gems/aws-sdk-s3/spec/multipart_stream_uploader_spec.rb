# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe MultipartStreamUploader do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { MultipartStreamUploader.new(client: client, executor: DefaultExecutor.new) }
      let(:params) { { bucket: 'bucket', key: 'key' } }
      let(:one_mb) { '.' * 1024 * 1024 }
      let(:seventeen_mb) { one_mb * 17 }

      describe '#initialize' do
        it 'constructs a default s3 client when none provided' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          uploader = MultipartStreamUploader.new
          expect(uploader.client).to be(client)
        end
      end

      describe '#upload_stream', :jruby_flaky do
        it 'can upload empty stream' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:upload_part, etag: 'etag')
          expected_params = params.merge(
            upload_id: 'id',
            multipart_upload: { parts: [{ etag: 'etag', part_number: 1 }] }
          )
          expect(client).to receive(:complete_multipart_upload).with(expected_params).once

          subject.upload(params.merge(content_type: 'text/plain')) { |write_stream| write_stream << '' }
        end

        it 'uses multipart APIs' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:upload_part, etag: 'etag')
          expected_params = params.merge(
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
          expect(client).to receive(:complete_multipart_upload).with(expected_params).once
          subject.upload(params.merge(content_type: 'text/plain')) { |write_stream| write_stream << seventeen_mb }
        end

        it 'uploads the correct parts' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          4.times.each do |p|
            expect(client)
              .to receive(:upload_part)
              .with(params.merge(upload_id: 'id', body: instance_of(StringIO), part_number: p + 1))
              .once
              .and_return(double(:upload_part, etag: 'etag'))
          end

          subject.upload(params.merge(content_type: 'text/plain')) { |write_stream| write_stream << seventeen_mb }
        end

        it 'uploads the correct parts when input is chunked' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          4.times.each do |p|
            expect(client)
              .to receive(:upload_part)
              .with(params.merge(upload_id: 'id', body: instance_of(StringIO), part_number: p + 1))
              .once
              .and_return(double(:upload_part, etag: 'etag'))
          end

          subject.upload(params) do |write_stream|
            17.times { write_stream << one_mb }
          end
        end

        it 'passes stringios with correct contents to upload_part' do
          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)
          result = []
          mutex = Mutex.new
          allow(client).to receive(:upload_part) do |part|
            mutex.synchronize { result << [part[:part_number], part[:body].read.size] }
          end.and_return(double(:upload_part, etag: 'etag'))

          subject.upload(params) do |write_stream|
            17.times { write_stream << one_mb }
          end

          expect(result.sort_by(&:first)).to eq(
            [
              [1, 5 * 1024 * 1024],
              [2, 5 * 1024 * 1024],
              [3, 5 * 1024 * 1024],
              [4, 2 * 1024 * 1024]
            ]
          )
        end

        it 'automatically deletes failed multipart upload on part processing error' do
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

          expect do
            subject.upload(params) do |write_stream|
              write_stream << seventeen_mb
            rescue Errno::EPIPE
              # ignore
            end
          end.to raise_error(MultipartUploadError, /multipart upload failed: part 3 failed/)
        end

        it 'automatically deletes failed multipart upload on stream read error' do
          expect(client).to receive(:abort_multipart_upload).with(params.merge(upload_id: 'MultipartUploadId'))

          expect do
            subject.upload(params) do |_write_stream|
              raise 'something went wrong'
            end
          end.to raise_error(/something went wrong/)
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
          client.stub_responses(:abort_multipart_upload, RuntimeError.new('network-error'))

          expect do
            subject.upload(params) { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(S3::MultipartUploadError, /failed to abort multipart upload: network-error/)
        end

        it 'aborts without hanging when the executor rejects a task mid-stream' do
          client.stub_responses(:create_multipart_upload, upload_id: 'MultipartUploadId')
          client.stub_responses(:upload_part, etag: 'etag')
          executor = DefaultExecutor.new
          calls = 0
          # Simulate a concurrent shutdown closing the queue: the second post is
          # rejected the way DefaultExecutor#post now raises on a closed queue.
          allow(executor).to receive(:post).and_wrap_original do |original, *args, &blk|
            calls += 1
            raise 'Executor has been shutdown and is no longer accepting tasks' if calls == 2

            original.call(*args, &blk)
          end
          uploader = MultipartStreamUploader.new(client: client, executor: executor, part_size: 5 * 1024 * 1024)

          expect(client).to receive(:abort_multipart_upload)
            .with(params.merge(upload_id: 'MultipartUploadId')).and_call_original
          expect do
            uploader.upload(params) do |write_stream|
              15.times { write_stream << one_mb }
            rescue Errno::EPIPE
              # producer stops writing once the read end is closed
            end
          end.to raise_error(S3::MultipartUploadError)
        end

        context 'when source outpaces upload' do
          let(:num_threads) { 2 }
          let(:executor) { DefaultExecutor.new(max_threads: num_threads, max_queue: num_threads) }
          let(:subject) { MultipartStreamUploader.new(client: client, executor: executor, part_size: 1024 * 1024) }

          it 'bounds the number of parts buffered ahead of the upload' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:complete_multipart_upload)
            mutex = Mutex.new
            buffered = 0
            peak_buffered = 0
            # count parts read off the pipe but not yet uploaded
            allow(subject).to receive(:read_to_part_body).and_wrap_original do |original, *args|
              body = original.call(*args)
              mutex.synchronize do
                if body
                  buffered += 1
                  peak_buffered = buffered if buffered > peak_buffered
                end
              end
              body
            end
            allow(client).to receive(:upload_part) do |_part|
              sleep(0.05)
              mutex.synchronize { buffered -= 1 }
            end.and_return(double(:upload_part, etag: 'etag'))

            subject.upload(params) do |write_stream|
              30.times { write_stream << one_mb }
            end

            # at most max_queue queued + max_threads in flight + 1 being read.
            # without a bounded queue all 30 parts are read into memory up front.
            expect(peak_buffered).to be <= (num_threads * 2) + 1
          end

          it 'completes all parts under backpressure' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:complete_multipart_upload)
            mutex = Mutex.new
            uploaded_parts = []
            allow(client).to receive(:upload_part) do |part|
              sleep(0.05)
              mutex.synchronize { uploaded_parts << part[:part_number] }
            end.and_return(double(:upload_part, etag: 'etag'))

            subject.upload(params) do |write_stream|
              10.times { write_stream << one_mb }
            end

            expect(uploaded_parts.sort).to eq((1..10).to_a)
          end
        end

        context 'when tempfile is true' do
          let(:subject) { MultipartStreamUploader.new(client: client, tempfile: true, executor: DefaultExecutor.new) }

          it 'uses multipart APIs' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:upload_part, etag: 'etag')
            expected_params = params.merge(
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
            expect(client).to receive(:complete_multipart_upload).with(expected_params).once
            subject.upload(params.merge(content_type: 'text/plain')) { |write_stream| write_stream << seventeen_mb }
          end

          it 'uploads the correct parts' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            4.times.each do |p|
              expect(client)
                .to receive(:upload_part)
                .with(params.merge(upload_id: 'id', body: instance_of(Tempfile), part_number: p + 1))
                .once
                .and_return(double(:upload_part, etag: 'etag'))
            end

            subject.upload(params) { |write_stream| write_stream << seventeen_mb }
          end

          it 'uploads the correct parts when input is chunked' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(:complete_multipart_upload)
            4.times.each do |p|
              expect(client)
                .to receive(:upload_part)
                .with(params.merge(upload_id: 'id', body: instance_of(Tempfile), part_number: p + 1))
                .once
                .and_return(double(:upload_part, etag: 'etag'))
            end

            subject.upload(params) do |write_stream|
              17.times { write_stream << one_mb }
            end
          end

          it 'automatically deletes failed multipart upload on part processing error' do
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

            expect do
              subject.upload(params.merge(tempfile: true)) do |write_stream|
                write_stream << seventeen_mb
              rescue Errno::EPIPE
                # ignore
              end
            end.to raise_error(MultipartUploadError, /multipart upload failed: part 3 failed/)
          end

          it 'automatically deletes failed multipart upload on stream read error' do
            expect(client).to receive(:abort_multipart_upload).with(params.merge(upload_id: 'MultipartUploadId'))

            expect do
              subject.upload(params) do |_write_stream|
                raise 'something went wrong'
              end
            end.to raise_error(/something went wrong/)
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
            client.stub_responses(:abort_multipart_upload, RuntimeError.new('network-error'))

            expect do
              subject.upload(params) { |write_stream| write_stream << seventeen_mb }
            end.to raise_error(S3::MultipartUploadError, /failed to abort multipart upload: network-error/)
          end
        end
      end
    end
  end
end
