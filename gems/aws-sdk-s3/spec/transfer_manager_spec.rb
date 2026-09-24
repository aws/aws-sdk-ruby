# frozen_string_literal: true

require_relative 'transfer_manager_spec_helper'

module Aws
  module S3
    describe TransferManager, :jruby_flaky do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { TransferManager.new(client: client) }
      let(:one_mb_size) { 1024 * 1024 }
      let(:one_mb_content) { '.' * one_mb_size }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          tm = TransferManager.new
          expect(tm.client).to be(client)
        end
      end

      describe '#download_directory' do
        let(:temp_dir) { Dir.mktmpdir }

        before do
          client.stub_responses(
            :list_objects_v2,
            {
              contents: [{ key: 'file1.txt', size: 100 }, { key: 'file2.txt', size: 100 }],
              is_truncated: false
            }
          )
          client.stub_responses(:get_object, { body: 'content' })
        end

        after do
          FileUtils.rm_rf(temp_dir)
        end

        it 'returns results when download succeeds' do
          result = subject.download_directory(temp_dir, bucket: 'bucket')
          expect(result[:completed_downloads]).to eq(2)
          expect(result[:failed_downloads]).to eq(0)
        end

        it 'raises when download errors' do
          client.stub_responses(:get_object, 'AccessDenied')

          expect do
            subject.download_directory(temp_dir, bucket: 'bucket', ignore_failure: false)
          end.to raise_error(DirectoryDownloadError)
        end

        it 'shuts down the internally-created executor when download raises' do
          client.stub_responses(:get_object, 'AccessDenied')
          executor = nil
          allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
            instance = orig.call(*args, **kwargs)
            if executor.nil?
              executor = instance
              allow(instance).to receive(:shutdown).and_call_original
            end
            instance
          end
          expect do
            subject.download_directory(temp_dir, bucket: 'bucket', ignore_failure: false)
          end.to raise_error(DirectoryDownloadError)
          expect(executor).to have_received(:shutdown)
        end
      end

      describe '#download_file' do
        let(:path) { Tempfile.new('destination').path }

        before do
          client.stub_responses(:head_object, content_length: one_mb_size, parts_count: nil)
          client.stub_responses(:get_object, { body: 'hello-world' })
        end

        it 'returns true when download succeeds' do
          expect(subject.download_file(path, bucket: 'bucket', key: 'key')).to be(true)
          expect(File.read(path)).to eq('hello-world')
        end

        it 'raises when download errors' do
          client.stub_responses(:head_object, 'NoSuchKey')
          expect { subject.download_file(path, bucket: 'bucket', key: 'missing-key') }
            .to raise_error(Aws::S3::Errors::NoSuchKey)
        end

        it 'shuts down the internally-created executor when download raises' do
          client.stub_responses(:head_object, 'NoSuchKey')
          executor = nil
          allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
            executor = orig.call(*args, **kwargs)
            allow(executor).to receive(:shutdown).and_call_original
            executor
          end
          expect { subject.download_file(path, bucket: 'bucket', key: 'missing-key') }
            .to raise_error(Aws::S3::Errors::NoSuchKey)
          expect(executor).to have_received(:shutdown)
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _p, _t| n_calls += 1 }
          expect(client).to receive(:get_object) do |args|
            File.write(args[:response_target], 'data')
            args[:on_chunk_received]&.call('chunk', 1024, 1024)
          end

          subject.download_file(path, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end
      end

      describe '#upload_directory' do
        let(:temp_dir) { Dir.mktmpdir }

        before do
          TransferManagerSpecHelper.create_test_directory_structure(temp_dir)
        end

        after do
          FileUtils.rm_rf(temp_dir)
        end

        it 'returns upload results when upload succeeds' do
          result = subject.upload_directory(temp_dir, bucket: 'bucket')
          expect(result[:completed_uploads]).to eq(5)
          expect(result[:failed_uploads]).to eq(0)
        end

        it 'raises when upload errors' do
          client.stub_responses(:put_object, 'AccessDenied')
          expect do
            subject.upload_directory(temp_dir, bucket: 'bucket', ignore_failure: false)
          end.to raise_error(DirectoryUploadError)
        end

        it 'shuts down the internally-created executor when upload raises' do
          client.stub_responses(:put_object, 'AccessDenied')
          executor = nil
          allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
            instance = orig.call(*args, **kwargs)
            if executor.nil?
              executor = instance
              allow(instance).to receive(:shutdown).and_call_original
            end
            instance
          end
          expect do
            subject.upload_directory(temp_dir, bucket: 'bucket', ignore_failure: false)
          end.to raise_error(DirectoryUploadError)
          expect(executor).to have_received(:shutdown)
        end
      end

      describe '#upload_file' do
        let(:file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        let(:large_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        it 'returns true when upload succeeds' do
          expect(subject.upload_file(file, bucket: 'bucket', key: 'key')).to be(true)
        end

        it 'raises when upload errors' do
          client.stub_responses(:put_object, 'AccessDenied')
          expect { subject.upload_file(file, bucket: 'forbidden-bucket', key: 'key') }
            .to raise_error(Aws::S3::Errors::AccessDenied)
        end

        it 'shuts down the internally-created executor when upload raises' do
          client.stub_responses(:put_object, 'AccessDenied')
          executor = nil
          allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
            executor = orig.call(*args, **kwargs)
            allow(executor).to receive(:shutdown).and_call_original
            executor
          end
          expect { subject.upload_file(file, bucket: 'forbidden-bucket', key: 'key') }
            .to raise_error(Aws::S3::Errors::AccessDenied)
          expect(executor).to have_received(:shutdown)
        end

        it 'yields response when block given' do
          subject.upload_file(file, bucket: 'bucket', key: 'key') do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _t| n_calls += 1 }
          expect(client).to receive(:put_object) { |args| args[:on_chunk_sent]&.call('chunk', 1024, 1024) }

          subject.upload_file(file, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end

        it 'accepts an alternative multipart file threshold' do
          expect(client).to receive(:put_object).with({ bucket: 'bucket', key: 'key', body: large_file })
          subject.upload_file(large_file, bucket: 'bucket', key: 'key', multipart_threshold: 200 * one_mb_size)
        end

        context ':http_check_size', skip: defined?(JRUBY_VERSION) do
          let(:test_file) do
            Tempfile.new('test_upload_file').tap do |f|
              f.write('x' * 65_536)
              f.rewind
            end
          end

          it 'uses the given chunk size when uploading' do
            WebMock.disable!
            chunk_size = 32_768
            server, server_thread, port = TransferManagerSpecHelper.start_mirror_server(chunk_size)
            client = Aws::S3::Client.new(
              endpoint: "http://127.0.0.1:#{port}",
              region: 'us-east-1',
              access_key_id: 't',
              secret_access_key: 't'
            )
            tm = Aws::S3::TransferManager.new(client: client)
            read_sizes = []

            expect(Seahorse::Client::NetHttp::Patches::RequestPatches::RequestIO)
              .to receive(:custom_stream).and_call_original
            allow_any_instance_of(Aws::Plugins::ChecksumAlgorithm::AwsChunkedTrailerDigestIO)
              .to receive(:read).and_wrap_original do |method, size|
                read_sizes << size
                method.call(size)
            end

            tm.upload_file(test_file, bucket: 'test-bucket', key: 'test-key', http_chunk_size: chunk_size)
            server_thread.join
            expect(read_sizes).to all(eq(chunk_size))
          ensure
            server&.close
            WebMock.enable!
          end

          it 'uses default chunk size' do
            WebMock.disable!
            chunk_size = 16_384
            server, server_thread, port = TransferManagerSpecHelper.start_mirror_server(chunk_size)
            client = Aws::S3::Client.new(
              endpoint: "http://127.0.0.1:#{port}",
              region: 'us-east-1',
              access_key_id: 't',
              secret_access_key: 't'
            )
            tm = Aws::S3::TransferManager.new(client: client)
            read_sizes = []

            allow_any_instance_of(Aws::Plugins::ChecksumAlgorithm::AwsChunkedTrailerDigestIO)
              .to receive(:read).and_wrap_original do |method, size|
                read_sizes << size
                method.call(size)
            end
            tm.upload_file(test_file, bucket: 'test-bucket', key: 'test-key')
            server_thread.join
            expect(read_sizes).to all(eq(chunk_size))
          ensure
            server.close
            WebMock.enable!
          end

          it 'raises error when less than 16KB' do
            expect do
              subject.upload_file(large_file, bucket: 'bucket', key: 'key', http_chunk_size: 100)
            end.to raise_error(ArgumentError, /:http_chunk_size must be at least 16384 bytes/)
          end
        end
      end

      describe '#upload_stream' do
        let(:seventeen_mb) { one_mb_content * 17 }

        it 'returns true when succeeds' do
          resp = subject.upload_stream(bucket: 'bucket', key: 'key', content_type: 'text/plain') do |write_stream|
            write_stream << seventeen_mb
          end
          expect(resp).to be(true)
        end

        it 'raises when errors' do
          client.stub_responses(:upload_part, RuntimeError.new('part failed'))
          expect do
            subject.upload_stream(bucket: 'bucket', key: 'key') { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(Aws::S3::MultipartUploadError, /part failed/)
        end

        it 'shuts down the internally-created executor when upload raises' do
          client.stub_responses(:upload_part, RuntimeError.new('part failed'))
          executor = nil
          allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
            executor = orig.call(*args, **kwargs)
            allow(executor).to receive(:shutdown).and_call_original
            executor
          end
          expect do
            subject.upload_stream(bucket: 'bucket', key: 'key') { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(Aws::S3::MultipartUploadError, /part failed/)
          expect(executor).to have_received(:shutdown)
        end
      end

      describe ':thread_count' do
        let(:custom_executor) { DefaultExecutor.new(max_threads: 3) }
        let(:temp_dir) { Dir.mktmpdir }
        let(:destination) { Tempfile.new('destination').path }
        let(:small_file) { Tempfile.new('small-file').tap { |f| f.write('.' * 100) && f.rewind } }
        let(:ten_mb_file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb_content) }
            f.rewind
          end
        end
        let(:seventeen_mb) { one_mb_content * 17 }

        # Records the :max_threads of every executor the SDK builds internally. The directory
        # methods also build a queue executor with max_threads: 2, so assertions check for the
        # requested value rather than the size of the list.
        let(:max_threads) do
          [].tap do |seen|
            allow(DefaultExecutor).to receive(:new).and_wrap_original do |orig, *args, **kwargs|
              seen << kwargs[:max_threads]
              orig.call(*args, **kwargs)
            end
          end
        end

        before do
          max_threads
          client.stub_responses(:head_object, content_length: one_mb_size, parts_count: nil)
          client.stub_responses(:get_object, { body: 'hello-world' })
          client.stub_responses(
            :list_objects_v2,
            { contents: [{ key: 'file1.txt', size: 100 }], is_truncated: false }
          )
          TransferManagerSpecHelper.create_test_directory_structure(temp_dir)
        end

        after do
          FileUtils.rm_rf(temp_dir)
          custom_executor.shutdown
        end

        context 'when no executor was provided to the TransferManager' do
          it 'is used for #upload_file' do
            subject.upload_file(small_file, bucket: 'bucket', key: 'key', thread_count: 4)
            expect(max_threads).to include(4)
          end

          it 'is used for #download_file' do
            subject.download_file(destination, bucket: 'bucket', key: 'key', thread_count: 4)
            expect(max_threads).to include(4)
          end

          it 'is used for #upload_stream' do
            subject.upload_stream(bucket: 'bucket', key: 'key', thread_count: 4) do |stream|
              stream << seventeen_mb
            end
            expect(max_threads).to include(4)
          end

          it 'is used for #upload_directory' do
            subject.upload_directory(temp_dir, bucket: 'bucket', thread_count: 4)
            expect(max_threads).to include(4)
          end

          it 'is used for #download_directory' do
            subject.download_directory(Dir.mktmpdir, bucket: 'bucket', thread_count: 4)
            expect(max_threads).to include(4)
          end
        end

        context 'when an executor was provided to the TransferManager' do
          let(:subject) { TransferManager.new(client: client, executor: custom_executor) }

          it 'is ignored by #upload_file' do
            expect do
              subject.upload_file(small_file, bucket: 'bucket', key: 'key', thread_count: 4)
            end.not_to raise_error
            expect(max_threads).not_to include(4)
          end

          it 'is ignored by #download_file' do
            expect do
              subject.download_file(destination, bucket: 'bucket', key: 'key', thread_count: 4)
            end.not_to raise_error
            expect(max_threads).not_to include(4)
          end

          it 'is ignored by #upload_stream' do
            expect do
              subject.upload_stream(bucket: 'bucket', key: 'key', thread_count: 4) do |stream|
                stream << seventeen_mb
              end
            end.not_to raise_error
            expect(max_threads).not_to include(4)
          end

          it 'is ignored by #upload_directory' do
            expect do
              subject.upload_directory(temp_dir, bucket: 'bucket', thread_count: 4)
            end.not_to raise_error
            expect(max_threads).not_to include(4)
          end

          it 'is ignored by #download_directory' do
            expect do
              subject.download_directory(Dir.mktmpdir, bucket: 'bucket', thread_count: 4)
            end.not_to raise_error
            expect(max_threads).not_to include(4)
          end

          # Regression: the option used to leak into the unfiltered #put_object call on the
          # single-part path, so an identical call raised or not depending on the file size.
          it 'does not leak into the request params on the single-part upload path' do
            expect(client).to receive(:put_object).with(hash_excluding(:thread_count)).and_call_original
            subject.upload_file(small_file, bucket: 'bucket', key: 'key', thread_count: 4)
          end

          it 'does not leak into the request params on the multipart upload path' do
            expect do
              subject.upload_file(ten_mb_file, bucket: 'bucket', key: 'key', thread_count: 4)
            end.not_to raise_error
          end
        end
      end
    end
  end
end
