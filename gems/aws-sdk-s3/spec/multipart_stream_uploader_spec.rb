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

      describe '#upload_stream memory bounds', :jruby_flaky do
        it 'bounds queued parts to the thread count when source outpaces upload' do
          num_threads = 4
          part_size = 1024 * 1024 # 1 MB parts for faster test
          total_parts = 20
          total_data = part_size * total_parts

          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)

          mutex = Mutex.new
          queue_depth_samples = []

          executor = DefaultExecutor.new(max_threads: num_threads)

          # Simulate slow uploads so parts queue up faster than they drain
          allow(client).to receive(:upload_part) do |_part|
            mutex.synchronize do
              queue_depth_samples << executor.instance_variable_get(:@queue).size
            end
            sleep(0.05)
            double(:upload_part, etag: 'etag')
          end

          uploader = MultipartStreamUploader.new(
            client: client,
            executor: executor,
            part_size: part_size
          )

          uploader.upload(params) do |write_stream|
            write_stream << ('a' * total_data)
          end

          peak_queue_depth = queue_depth_samples.max || 0

          # With backpressure (SizedQueue), the reader blocks when the
          # queue is full, so depth never exceeds the thread count.
          expect(peak_queue_depth).to be <= num_threads,
            "Expected peak queue depth (#{peak_queue_depth}) to be at most " \
            "num_threads (#{num_threads}), but the queue grew unbounded."
        end

        it 'completes all parts under backpressure' do
          num_threads = 2
          part_size = 1024 * 1024 # 1 MB
          total_parts = 10
          total_data = part_size * total_parts

          client.stub_responses(:create_multipart_upload, upload_id: 'id')
          client.stub_responses(:complete_multipart_upload)

          mutex = Mutex.new
          uploaded_parts = []

          executor = DefaultExecutor.new(max_threads: num_threads)

          allow(client).to receive(:upload_part) do |part|
            sleep(0.05) # slow upload
            mutex.synchronize { uploaded_parts << part[:part_number] }
            double(:upload_part, etag: 'etag')
          end

          uploader = MultipartStreamUploader.new(
            client: client,
            executor: executor,
            part_size: part_size
          )

          uploader.upload(params) do |write_stream|
            write_stream << ('a' * total_data)
          end

          expect(uploaded_parts.sort).to eq((1..total_parts).to_a)
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
