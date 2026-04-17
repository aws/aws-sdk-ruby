# frozen_string_literal: true

require_relative 'transfer_manager_spec_helper'

module Aws
  module S3
    describe DirectoryDownloader do
      let(:client) { Aws::S3::Client.new(stub_responses: true) }
      let(:executor) { DefaultExecutor.new }
      let(:downloader) { DirectoryDownloader.new(client: client, executor: executor) }

      describe '#initialize' do
        it 'accepts client and executor options' do
          expect(downloader.client).to be(client)
          expect(downloader.executor).to be(executor)
        end
      end

      describe '#download', :jruby_flaky do
        let(:temp_dir) { Dir.mktmpdir }

        before do
          client.stub_responses(
            :list_objects_v2,
            [
              {
                contents: [{ key: 'file1.txt', size: 100 }, { key: 'file2.json', size: 100 }],
                is_truncated: true, next_continuation_token: 'token1'
              },
              {
                contents: [{ key: 'file3.txt', size: 100 }],
                is_truncated: false
              }
            ]
          )
          client.stub_responses(:get_object, { body: 'content' })
        end

        after do
          FileUtils.rm_rf(temp_dir)
        end

        it 'handles empty bucket' do
          client.stub_responses(:list_objects_v2, { contents: [], is_truncated: false })
          result = downloader.download(temp_dir, bucket: 'test-bucket')

          expect(result[:completed_downloads]).to eq(0)
          expect(result[:failed_downloads]).to eq(0)
        end

        it 'skips directory marker objects' do
          client.stub_responses(
            :list_objects_v2,
            { contents: [{ key: 'folder/', size: 0 }, { key: 'folder/file.txt', size: 100 }], is_truncated: false }
          )
          result = downloader.download(temp_dir, bucket: 'test-bucket')

          expect(result[:completed_downloads]).to eq(1)
          expect(File.exist?(File.join(temp_dir, 'folder', 'file.txt'))).to be true
        end

        it 'raises when given an invalid destination' do
          file_path = File.join(temp_dir, 'file.txt')
          File.write(file_path, 'content')

          expect do
            downloader.download(file_path, bucket: 'test-bucket')
          end.to raise_error(ArgumentError, /invalid destination/)
        end

        it 'raises when object key contains path traversal sequences' do
          client.stub_responses(
            :list_objects_v2,
            { contents: [{ key: 'foo/../bar.txt', size: 100 }], is_truncated: false }
          )

          expect do
            downloader.download(temp_dir, bucket: 'bucket')
          end.to raise_error(DirectoryDownloadError, /invalid key/)
        end

        context 's3 prefix' do
          it 'preserves full object keys in local paths' do
            client.stub_responses(
              :list_objects_v2,
              {
                contents: [
                  { key: 'prefix/file1.txt', size: 100 },
                  { key: 'prefix/subdir/file2.txt', size: 100 }
                ],
                is_truncated: false
              }
            )
            result = downloader.download(temp_dir, bucket: 'test-bucket', s3_prefix: 'prefix')

            expect(result[:completed_downloads]).to eq(2)
            expect(File.exist?(File.join(temp_dir, 'prefix', 'file1.txt'))).to be true
            expect(File.exist?(File.join(temp_dir, 'prefix', 'subdir', 'file2.txt'))).to be true
          end
        end

        context 'ignore_failure option' do
          it 'stops downloading after failure by default' do
            client.stub_responses(:get_object, 'AccessDenied')

            expect do
              downloader.download(temp_dir, bucket: 'test-bucket')
            end.to raise_error(DirectoryDownloadError)
          end

          it 'continues downloading after failure when true' do
            client.stub_responses(:get_object, lambda { |context|
              if context.params[:key] == 'file2.json'
                'AccessDenied'
              else
                { body: 'content' }
              end
            })
            result = downloader.download(temp_dir, bucket: 'test-bucket', ignore_failure: true)

            expect(result[:completed_downloads]).to eq(2)
            expect(result[:failed_downloads]).to eq(1)
            expect(result[:errors].count).to eq(1)
          end
        end

        context 'filter callbacks' do
          it 'excludes objects' do
            filter = ->(obj) { obj.key.end_with?('.txt') }
            result = downloader.download(temp_dir, bucket: 'test-bucket', filter_callback: filter)

            expect(result[:completed_downloads]).to eq(2)
          end
        end

        context 'request callbacks' do
          it 'modifies download parameters' do
            client.stub_responses(
              :list_objects_v2,
              {
                contents: [{ key: 'file.txt', size: 100 }],
                is_truncated: false
              }
            )

            client.stub_responses(
              :get_object,
              lambda { |context|
                received_params = context.params
                expect(received_params[:version_id]).to eq('v1')
                { body: 'content' }
              }
            )
            callback = lambda { |_key, params|
              params[:version_id] = 'v1'
              params
            }
            downloader.download(temp_dir, bucket: 'test-bucket', request_callback: callback)
          end
        end
      end
    end
  end
end
