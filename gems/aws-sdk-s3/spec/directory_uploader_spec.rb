# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'
require 'tmpdir'

module Aws
  module S3
    describe DirectoryUploader do
      def create_test_directory_structure(base_dir)
        # Root files
        create_file_with_size(base_dir, 'small.txt', 1024) # 1KB
        create_file_with_size(base_dir, 'medium.log', 1024 * 1024)  # 1MB
        create_file_with_size(base_dir, 'large.dat', 10 * 1024 * 1024) # 10MB
        create_file_with_size(base_dir, 'huge.bin', 20 * 1024 * 1024) # 20MB
        create_file_with_size(base_dir, 'target.txt', 1024 * 1024)  # 1MB

        # Nested directories
        subdir1 = File.join(base_dir, 'documents')
        Dir.mkdir(subdir1)
        create_file_with_size(subdir1, 'readme.md', 2048) # 2KB
        create_file_with_size(subdir1, 'backup.zip', 10 * 1024 * 1024) # 10MB

        subdir2 = File.join(base_dir, 'images')
        Dir.mkdir(subdir2)
        create_file_with_size(subdir2, 'photo1.jpg', 2 * 1024 * 1024) # 2MB

        # Deep nesting
        subdir3 = File.join(subdir2, 'thumbnails')
        Dir.mkdir(subdir3)
        create_file_with_size(subdir3, 'thumb.jpg', 50 * 1024) # 50KB

        # Symlinks for testing
        File.symlink(File.join(base_dir, 'small.txt'), File.join(base_dir, 'small_link.txt'))
        File.symlink(subdir1, File.join(base_dir, 'docs_link'))

        # Recursive symlink (points back to parent directory)
        File.symlink(base_dir, File.join(subdir1, 'parent_link'))
        File.symlink(File.join(base_dir, 'target.txt'), File.join(base_dir, 'link1.txt'))
        File.symlink(File.join(base_dir, 'link1.txt'), File.join(base_dir, 'link2.txt'))
      end

      def create_file_with_size(dir, filename, size_bytes)
        file_path = File.join(dir, filename)
        File.write(file_path, 'x' * size_bytes)
      end

      let(:client) { Aws::S3::Client.new(stub_responses: true) }
      let(:executor) { DefaultExecutor.new }
      let(:uploader) { DirectoryUploader.new(client: client, executor: executor) }

      describe '#initialize' do
        it 'constructs with default options' do
          uploader = DirectoryUploader.new
          expect(uploader.abort_requested).to be false
        end

        it 'accepts client and executor options' do
          expect(uploader.client).to be(client)
          expect(uploader.executor).to be(executor)
        end
      end

      describe '#upload' do
        let(:temp_dir) { Dir.mktmpdir }

        before do
          create_test_directory_structure(temp_dir)
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
            uploader.request_abort if call_count == 2
          end

          expect do
            uploader.upload(temp_dir, 'test-bucket')
          end.to raise_error(DirectoryUploadError)

          expect(call_count).to be < 5
        end


        it 'raises when directory traversal fails' do
          allow(Dir).to receive(:each_child).and_raise(Errno::EACCES, 'Permission denied')
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
          it 'follows symlinks when true' do
            result = uploader.upload(temp_dir, 'test-bucket', recursive: true, follow_symlinks: true)
            expect(result[:completed_uploads]).to eq(14)
            expect(result[:failed_uploads]).to eq(0)
          end
        end

        context 'ignore_failure option' do
          it 'stops uploading after failure by default' do
            allow(client).to receive(:put_object).and_raise(Aws::S3::Errors::AccessDenied.new(nil, 'Access Denied'))
            expect do
              uploader.upload(temp_dir, 'test-bucket', ignore_failure: false)
            end.to raise_error(DirectoryUploadError)
          end

          it 'continues uploading after failure when true' do
            uploaded_keys = []
            allow(client).to receive(:put_object) do |params|
              if %w[small.txt medium.log].include?(params[:key])
                raise Aws::S3::Errors::AccessDenied.new(nil, 'Access Denied')
              end
              uploaded_keys << params[:key]
            end

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
            filter_callback = lambda { |_p, name| !name.end_with?('.bin') }
            result = uploader.upload(temp_dir, 'test-bucket', filter_callback: filter_callback)

            expect(uploaded_keys).not_to include('huge.bin')
            expect(result[:completed_uploads]).to eq(4)
          end
        end

        context 'request callbacks' do
          it 'modifies upload parameters' do
            uploaded_params = []
            allow(client).to receive(:put_object) { |p| uploaded_params << p }
            request_callback = lambda do |_p, params|
              params[:storage_class] = 'GLACIER'
              params
            end

            uploader.upload(temp_dir, 'test-bucket', request_callback: request_callback)
            uploaded_params.each do |param|
              expect(param[:storage_class]).to eq('GLACIER')
            end
          end
        end

        context 'progress callbacks' do
          it 'reports progress' do
            progress_calls = []

            callback = proc do |bytes, files|
              progress_calls << { total_bytes: bytes, files_completed: files }
            end

            uploader.upload(temp_dir, 'test-bucket', recursive: false, progress_callback: callback)
            expect(progress_calls.length).to eq(5)
          end
        end
      end
    end
  end
end
