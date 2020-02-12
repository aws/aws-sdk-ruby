require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      let(:object) do
        S3::Object.new('bucket', 'unescaped/key path', stub_responses: true)
      end

      let(:client) { object.client }

      describe '#copy_to' do
        it 'accepts a string source' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path'
          )
          object.copy_to('target-bucket/target-key')
        end

        it 'accepts a hash source' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path'
          )
          object.copy_to(bucket: 'target-bucket', key: 'target-key')
        end

        it 'accepts a hash source' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path'
          )
          object.copy_to(bucket: 'target-bucket', key: 'target-key')
        end

        it 'accept a hash with options merged' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path',
            content_type: 'text/plain'
          )
          object.copy_to(
            bucket: 'target-bucket',
            key: 'target-key',
            content_type: 'text/plain'
          )
        end

        it 'accepts an S3::Object source' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path'
          )
          target = S3::Object.new(
            'target-bucket',
            'target-key',
            stub_responses: true
          )
          object.copy_to(target)
        end

        it 'accepts additional options' do
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path',
            acl: 'public-read'
          )
          object.copy_to('target-bucket/target-key', acl: 'public-read')
        end

        it 'raises an error on an invalid targets' do
          expect { object.copy_to(:target) }.to raise_error(ArgumentError)
        end
      end

      describe '#copy_from' do
        context 'with multipart_copy: false' do
          it 'supports the deprecated form' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/escaped/source/key%20path'
            )
            object.copy_from(
              copy_source: 'source-bucket/escaped/source/key%20path'
            )
          end

          it 'accepts a string source' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/source/key%20path'
            )
            object.copy_from('source-bucket/source/key%20path')
          end

          it 'accepts a hash source' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
            object.copy_from(
              bucket: 'source-bucket',
              key: 'unescaped/source/key path'
            )
          end

          it 'accepts a hash source with version id' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'src-bucket/src%20key?versionId=src-version-id'
            )
            object.copy_from(
              bucket: 'src-bucket',
              key: 'src key',
              version_id: 'src-version-id'
            )
          end

          it 'accept a hash with options merged' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/source%20key',
              content_type: 'text/plain'
            )
            object.copy_from(
              bucket: 'source-bucket',
              key: 'source key',
              content_type: 'text/plain'
            )
          end

          it 'accepts an S3::Object source' do
            src = S3::Object.new(
              'source-bucket',
              'unescaped/source/key path',
              stub_responses: true
            )
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
            object.copy_from(src)
          end

          it 'accepts an S3::ObjectSummary source' do
            src = S3::ObjectSummary.new(
              'source-bucket',
              'unescaped/source/key path',
              stub_responses: true
            )
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
            object.copy_from(src)
          end

          it 'accepts an S3::ObjectVersion source' do
            src = S3::ObjectVersion.new(
              'source-bucket', 'unescaped/source/key path',
              'source-version-id',
              stub_responses: true
            )
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'\
                           '?versionId=source-version-id'
            )
            object.copy_from(src)
          end

          it 'accepts additional options' do
            expect(client).to receive(:copy_object).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              copy_source: 'source-bucket/source%20key',
              acl: 'public-read'
            )
            object.copy_from('source-bucket/source%20key', acl: 'public-read')
          end

          it 'raises an error on an invalid source' do
            expect { object.copy_from(:source) }.to raise_error(ArgumentError)
          end
        end

        context 'with version_id and multipart_copy: true' do
          before(:each) do
            size = 300 * 1024 * 1024 # 300MB
            allow(client).to receive(:head_object).with(
              bucket: 'source-bucket',
              key: 'source key',
              version_id: 'source-version-id'
            ).and_return(client.stub_data(:head_object, content_length: size))
          end

          it 'performs multipart uploads for a versioned object' do
            expect(client).to receive(:create_multipart_upload)
              .with(bucket: 'bucket', key: 'unescaped/key path')
              .and_return(
                client.stub_data(:create_multipart_upload, upload_id: 'id')
              )

            source = 'source-bucket/source%20key?versionId=source-version-id'

            (1..6).each do |n|
              range = "bytes=#{(n - 1) * 52_428_800}-#{n * 52_428_800 - 1}"

              expect(client).to receive(:upload_part_copy).with(
                bucket: 'bucket',
                key: 'unescaped/key path',
                part_number: n,
                copy_source: source,
                copy_source_range: range,
                upload_id: 'id'
              ).and_return(
                client.stub_data(
                  :upload_part_copy,
                  copy_part_result: { etag: "etag#{n}" }
                )
              )
            end

            expect(client).to receive(:complete_multipart_upload).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              upload_id: 'id',
              multipart_upload: {
                parts: (1..6).map { |n| { etag: "etag#{n}", part_number: n } }
              }
            )

            object.copy_from(source, multipart_copy: true)
          end
        end

        context 'with multipart_copy: true' do
          before(:each) do
            size = 300 * 1024 * 1024 # 300MB
            allow(client).to receive(:head_object).with(
              bucket: 'source-bucket',
              key: 'source key'
            ).and_return(client.stub_data(:head_object, content_length: size))
          end

          it 'performs multipart uploads when :multipart_copy is true' do
            expect(client).to receive(:create_multipart_upload)
              .with(bucket: 'bucket', key: 'unescaped/key path')
              .and_return(
                client.stub_data(:create_multipart_upload, upload_id: 'id')
              )

            (1..6).each do |n|
              range = "bytes=#{(n - 1) * 52_428_800}-#{n * 52_428_800 - 1}"

              expect(client).to receive(:upload_part_copy).with(
                bucket: 'bucket',
                key: 'unescaped/key path',
                part_number: n,
                copy_source: 'source-bucket/source%20key',
                copy_source_range: range,
                upload_id: 'id'
              ).and_return(
                client.stub_data(
                  :upload_part_copy,
                  copy_part_result: { etag: "etag#{n}" }
                )
              )
            end

            expect(client).to receive(:complete_multipart_upload).with(
              bucket: 'bucket',
              key: 'unescaped/key path',
              upload_id: 'id',
              multipart_upload: {
                parts: (1..6).map { |n| { etag: "etag#{n}", part_number: n } }
              }
            )
            object.copy_from('source-bucket/source%20key', multipart_copy: true)
          end

          it 'supports alternative part sizes' do
            client.stub_responses(:create_multipart_upload, upload_id: 'id')
            client.stub_responses(
              :upload_part_copy,
              lambda do |context|
                {
                  copy_part_result: {
                    etag: "etag-#{context.params[:part_number]}"
                  }
                }
              end
            )

            # record all of the client requests
            q = Queue.new
            client.handle do |context|
              q << context
              @handler.call(context)
            end

            # initialize the multipart-copy
            object.copy_from(
              'source-bucket/source%20key',
              multipart_copy: true,
              min_part_size: 5 * 1024 * 1024
            )

            requests = []
            requests << q.shift until q.empty?

            # first request
            first = requests.first
            expect(first.operation_name).to eq(:create_multipart_upload)
            expect(first.params).to eq(
              bucket: 'bucket',
              key: 'unescaped/key path'
            )

            # part requests
            parts = requests[1..-2].sort_by { |r| r.params[:part_number] }
            parts.each.with_index do |part, i|
              n = i + 1
              range = "bytes=#{(n - 1) * 5_242_880}-#{n * 5_242_880 - 1}"

              expect(part.params).to eq(
                bucket: 'bucket',
                key: 'unescaped/key path',
                part_number: n,
                copy_source: 'source-bucket/source%20key',
                copy_source_range: range,
                upload_id: 'id'
              )
            end

            # final request
            final = requests.last
            expect(final.operation_name).to eq(:complete_multipart_upload)
            expect(final.params).to eq(
              bucket: 'bucket',
              key: 'unescaped/key path',
              upload_id: 'id',
              multipart_upload: {
                parts: (1..60).map { |n| { etag: "etag-#{n}", part_number: n } }
              }
            )
          end

          it 'aborts the upload on errors' do
            client.stub_responses(:upload_part_copy, 'NoSuchKey')
            allow(client).to receive(:create_multipart_upload)
              .with(bucket: 'bucket', key: 'unescaped/key path')
              .and_return(
                client.stub_data(:create_multipart_upload, upload_id: 'id')
              )
            expect(client).to receive(:abort_multipart_upload)
              .with(
                bucket: 'bucket',
                key: 'unescaped/key path',
                upload_id: 'id'
              )
            expect do
              object.copy_from(
                'source-bucket/source%20key',
                multipart_copy: true
              )
            end.to raise_error(Aws::S3::Errors::NoSuchKey)
          end

          it 'rejects files smaller than 5MB' do
            size = 4 * 1024 * 1024
            allow(client).to receive(:head_object).with(
              bucket: 'source-bucket',
              key: 'source key'
            ).and_return(client.stub_data(:head_object, content_length: size))
            expect do
              object.copy_from(
                'source-bucket/source%20key',
                multipart_copy: true
              )
            end.to raise_error(ArgumentError, /smaller than 5MB/)
          end

          it 'accepts file size option to avoid HEAD request' do
            expect(client).not_to receive(:head_object)
            object.copy_from('source-bucket/source%20key',
                             multipart_copy: true,
                             content_length: 10 * 1024 * 1024)
          end

          context 'when target and source objects are in different regions' do
            let(:content_length) { 10 * 1024 * 1024 }

            let(:source_region) { 'ap-southeast-1' }

            let(:source_bucket) { 'source-bucket' }
            let(:target_bucket) { 'target-bucket' }

            let(:key) { 'my/source-key' }

            let(:source_client) { S3::Client.new(stub_responses: true) }
            let(:target_client) { S3::Client.new(stub_responses: true) }

            let(:source_object) do
              S3::Object.new(
                bucket_name: source_bucket,
                key: key,
                client: source_client
              )
            end

            let(:target_object) do
              S3::Object.new(
                bucket_name: target_bucket,
                key: key,
                client: target_client
              )
            end

            let(:head_response) do
              double(Types::HeadObjectOutput, content_length: content_length)
            end

            before do
              allow(source_client).to receive(:head_object)
                .and_return(head_response)
            end

            context 'when the source is an S3::Object' do
              it 'uses the content-length of the source object and region' do
                expect(source_client).to receive(:head_object)
                  .with(bucket: source_bucket, key: key)
                expect(target_client).not_to receive(:head_object)

                target_object.copy_from(source_object, multipart_copy: true)
              end
            end

            context 'when the source is a Hash' do
              let(:source_hash) { { bucket: source_bucket, key: key } }

              it 'uses :copy_source_client to query content_length' do
                expect(source_client).to receive(:head_object)
                  .with(bucket: source_bucket, key: key)
                expect(target_client).not_to receive(:head_object)

                target_object.copy_from(
                  source_hash,
                  multipart_copy: true, copy_source_client: source_client
                )
              end

              it 'uses :copy_source_region to construct a client' do
                allow(S3::Client).to receive(:new).and_call_original

                expect(S3::Client).to receive(:new).with(
                  hash_including(region: source_region)
                ).and_return(source_client)
                expect(source_client).to receive(:head_object)
                  .with(bucket: source_bucket, key: key)
                expect(target_client).not_to receive(:head_object)

                target_object.copy_from(
                  source_hash,
                  multipart_copy: true,
                  copy_source_region: source_region
                )
              end
            end

            context 'when the source is a String' do
              let(:source_string) { "#{source_bucket}/#{key}" }

              it 'uses :copy_source_client to query content_length' do
                expect(source_client).to receive(:head_object)
                  .with(bucket: source_bucket, key: key)
                expect(target_client).not_to receive(:head_object)

                target_object.copy_from(
                  source_string,
                  multipart_copy: true,
                  copy_source_client: source_client
                )
              end

              it 'uses :copy_source_region to construct a client' do
                allow(S3::Client).to receive(:new).and_call_original

                expect(S3::Client).to receive(:new).with(
                  hash_including(region: source_region)
                ).and_return(source_client)
                expect(source_client).to receive(:head_object)
                  .with(bucket: source_bucket, key: key)
                expect(target_client).not_to receive(:head_object)

                target_object.copy_from(
                  source_string,
                  multipart_copy: true,
                  copy_source_region: source_region
                )
              end
            end
          end

          it 'does not modify given options' do
            options = { multipart_copy: true }
            object.copy_from('source-bucket/source%20key', options)
            expect(options).to eq(multipart_copy: true)
          end
        end
      end
    end
  end
end
