# frozen_string_literal: true

require_relative 'transfer_manager_spec_helper'

module Aws
  module S3
    describe DirectoryUploader do
      let(:client) { Aws::S3::Client.new(stub_responses: true) }
      let(:executor) { DefaultExecutor.new }
      let(:uploader) { DirectoryUploader.new(client: client, executor: executor) }

      describe '#initialize' do
        it 'accepts client and executor options' do
          expect(uploader.client).to be(client)
          expect(uploader.executor).to be(executor)
        end
      end

      describe '#upload', :jruby_flaky do
        let(:temp_dir) { Dir.mktmpdir }

        before do
          FileUtils.mkdir_p(temp_dir) unless Dir.exist?(temp_dir)
          TransferManagerSpecHelper.create_test_directory_structure(temp_dir)
        end

        after do
          FileUtils.rm_rf(temp_dir)
        end

        it 'handles empty directory' do
          empty_dir = Dir.mktmpdir
          result = uploader.upload(empty_dir, 'test-bucket')

          expect(result[:completed_uploads]).to eq(0)
          expect(result[:failed_uploads]).to eq(0)
          FileUtils.rm_rf(empty_dir)
        end

        it 'raises when directory does not exist' do
          expect do
            uploader.upload('/nonexistent/path', 'test-bucket')
          end.to raise_error(ArgumentError, /Invalid directory/)
        end

        it 'can be aborted mid-upload' do
          call_count = 0
          allow(client).to receive(:put_object) do
            call_count += 1
            uploader.abort if call_count == 2
          end

          expect do
            uploader.upload(temp_dir, 'test-bucket')
          end.to raise_error(DirectoryUploadError)
        end

        it 'raises when directory traversal fails' do
          allow(File).to receive(:lstat).and_call_original
          allow(File).to receive(:lstat).with(/small\.txt/).and_raise(Errno::EACCES, 'Permission denied')
          expect do
            uploader.upload(temp_dir, 'test-bucket', recursive: true, ignore_failure: true)
          end.to raise_error(DirectoryUploadError, /Directory traversal failed/)
        end

        context 'recursive' do
          it 'uploads recursively when true' do
            result = uploader.upload(temp_dir, 'test-bucket', recursive: true)

            expect(result[:completed_uploads]).to eq(9)
            expect(result[:failed_uploads]).to eq(0)
          end

          it 'uploads only direct files when false' do
            result = uploader.upload(temp_dir, 'test-bucket')

            expect(result[:completed_uploads]).to eq(5)
          end
        end

        context 's3 prefix' do
          it 'applies prefixes to all keys when set' do
            uploaded_keys = []
            allow(client).to receive(:put_object) { |p| uploaded_keys << p[:key] }
            result = uploader.upload(temp_dir, 'test-bucket', s3_prefix: 'uploads', recursive: true)

            expect(uploaded_keys).to all(start_with('uploads/'))
            expect(uploaded_keys.length).to eq(9)
            expect(result[:completed_uploads]).to eq(9)
          end
        end

        context 'follow_symlinks option' do
          it 'follows symlinks and skips cycles when true' do
            result = uploader.upload(temp_dir, 'test-bucket', recursive: true, follow_symlinks: true)
            expect(result[:completed_uploads]).to eq(14)
            expect(result[:failed_uploads]).to eq(0)
          end
        end

        context 'ignore_failure option' do
          it 'stops uploading after failure by default' do
            client.stub_responses(:put_object, 'AccessDenied')
            expect do
              uploader.upload(temp_dir, 'test-bucket', ignore_failure: false)
            end.to raise_error(DirectoryUploadError)
          end

          it 'continues uploading after failure when true' do
            client.stub_responses(:put_object, lambda { |context|
              %w[small.txt medium.log].include?(context.params[:key]) ? 'AccessDenied' : {}
            })

            result = uploader.upload(temp_dir, 'test-bucket', ignore_failure: true)
            expect(result[:completed_uploads]).to eq(3)
            expect(result[:failed_uploads]).to eq(2)
            expect(result[:errors].length).to eq(2)
          end
        end

        context 'filter callbacks' do
          it 'excludes files' do
            uploaded_keys = []
            allow(client).to receive(:put_object) { |p| uploaded_keys << p[:key] }
            filter_callback = ->(_path, file) { !file.end_with?('.bin') }
            result = uploader.upload(temp_dir, 'test-bucket', filter_callback: filter_callback)

            expect(uploaded_keys).not_to include('huge.bin')
            expect(result[:completed_uploads]).to eq(4)
          end
        end

        context 'request callbacks', :jruby_flaky do
          it 'modifies upload parameters' do
            uploaded_params = []
            allow(client).to receive(:put_object) { |p| uploaded_params << p }
            request_callback = lambda do |_path, params|
              params[:storage_class] = 'GLACIER'
              params
            end

            uploader.upload(temp_dir, 'test-bucket', request_callback: request_callback)
            expect(uploaded_params).to all(include(storage_class: 'GLACIER'))
          end
        end

      end
    end
  end
end
