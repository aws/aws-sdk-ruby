# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      let(:object) do
        S3::Object.new('bucket', 'unescaped/key path', stub_responses: true)
      end

      let(:client) { object.client }

      def get_requests(cli, operation_name)
        cli.api_requests.select { |req| req[:operation_name] == operation_name.to_sym }
      end

      def get_request_params(cli, operation_name)
        get_requests(cli, operation_name).first[:params]
      end

      describe '#copy_to' do
        it 'accepts a string source' do
          object.copy_to('target-bucket/target-key')

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({ bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path' })
          )
        end

        it 'accepts a hash source' do
          object.copy_to(bucket: 'target-bucket', key: 'target-key')

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({ bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path' })
          )
        end

        it 'accepts a hash source' do
          object.copy_to(bucket: 'target-bucket', key: 'target-key')

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({ bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path' })
          )
        end

        it 'accept a hash with options merged' do
          object.copy_to(bucket: 'target-bucket', key: 'target-key', content_type: 'text/plain')

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({
                 bucket: 'target-bucket',
                 key: 'target-key',
                 copy_source: 'bucket/unescaped/key%20path',
                 content_type: 'text/plain'
               })
          )
        end

        it 'accepts an S3::Object source' do
          target = S3::Object.new('target-bucket', 'target-key', stub_responses: true)
          object.copy_to(target)

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({ bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path' })
          )
        end

        it 'accepts additional options' do
          object.copy_to('target-bucket/target-key', acl: 'public-read')

          expect(get_requests(client, :copy_object).size).to eq(1)
          expect(get_request_params(client, :copy_object)).to(
            eq({
                 bucket: 'target-bucket',
                 key: 'target-key',
                 copy_source: 'bucket/unescaped/key%20path',
                 acl: 'public-read'
               })
          )
        end

        it 'raises an error on an invalid targets' do
          expect { object.copy_to(:target) }.to raise_error(ArgumentError)
        end
      end

      describe '#copy_from' do
        context 'with multipart_copy: false' do
          it 'supports the deprecated form' do
            object.copy_from(copy_source: 'source-bucket/escaped/source/key%20path')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/escaped/source/key%20path'
                 })
            )
          end

          it 'accepts a string source' do
            object.copy_from('source-bucket/source/key%20path')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/source/key%20path'
                 })
            )
          end

          it 'accepts a hash source' do
            object.copy_from(bucket: 'source-bucket', key: 'unescaped/source/key path')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/unescaped/source/key%20path'
                 })
            )
          end

          it 'accepts a hash source with version id' do
            object.copy_from(bucket: 'src-bucket', key: 'src key', version_id: 'src-version-id')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'src-bucket/src%20key?versionId=src-version-id'
                 })
            )
          end

          it 'accept a hash with options merged' do
            object.copy_from(bucket: 'source-bucket', key: 'source key', content_type: 'text/plain')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/source%20key',
                   content_type: 'text/plain'
                 })
            )
          end

          it 'accepts an S3::Object source' do
            src = S3::Object.new('source-bucket', 'unescaped/source/key path', stub_responses: true)
            object.copy_from(src)

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/unescaped/source/key%20path'
                 })
            )
          end

          it 'accepts an S3::ObjectSummary source' do
            src = S3::ObjectSummary.new('source-bucket', 'unescaped/source/key path', stub_responses: true)
            object.copy_from(src)

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/unescaped/source/key%20path'
                 })
            )
          end

          it 'accepts an S3::ObjectVersion source' do
            src = S3::ObjectVersion.new(
              'source-bucket', 'unescaped/source/key path',
              'source-version-id',
              stub_responses: true
            )
            object.copy_from(src)

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/unescaped/source/key%20path?versionId=source-version-id'
                 })
            )
          end

          it 'accepts additional options' do
            object.copy_from('source-bucket/source%20key', acl: 'public-read')

            expect(get_requests(client, :copy_object).size).to eq(1)
            expect(get_request_params(client, :copy_object)).to(
              eq({
                   bucket: 'bucket',
                   key: 'unescaped/key path',
                   copy_source: 'source-bucket/source%20key',
                   acl: 'public-read'
                 })
            )
          end

          it 'raises an error on an invalid source' do
            expect { object.copy_from(:source) }.to raise_error(ArgumentError)
          end
        end

        context 'with version_id and multipart_copy: true' do
          before(:each) do
            client.stub_responses(
              :head_object,
              client.stub_data(
                :head_object,
                content_length: 300 * 1024 * 1024, # 300MB
                content_type: 'application/json',
                server_side_encryption: 'aws:kms',
                ssekms_key_id: 'arn:aws:kms:us-east-1:1234567890:key/00000000-0000-0000-0000-000000000000'
              )
            )
          end

          it 'performs multipart uploads for a versioned object' do
            source = 'source-bucket/source%20key?versionId=source-version-id'
            object.copy_from(source, multipart_copy: true)

            expect(get_requests(client, :create_multipart_upload).size).to eq(1)
            expect(create_req = get_request_params(client, :create_multipart_upload)).to(
              include({ bucket: 'bucket', key: 'unescaped/key path', content_type: 'application/json' })
            )
            expect(create_req).not_to include(server_side_encryption: anything, ssekms_key_id: anything)

            expect((requests = get_requests(client, :upload_part_copy).map { |req| req[:params] }).size).to eq(6)
            requests.sort_by { |req| req[:part_number] }.each.with_index do |part, i|
              n = i + 1
              range = "bytes=#{(n - 1) * 52_428_800}-#{n * 52_428_800 - 1}"

              expect(part).to eq({ bucket: 'bucket',
                                   key: 'unescaped/key path',
                                   part_number: n,
                                   copy_source: source,
                                   copy_source_range: range,
                                   upload_id: 'MultipartUploadId' })
            end

            expect(get_requests(client, :complete_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :complete_multipart_upload)).to(
              include({ bucket: 'bucket',
                        key: 'unescaped/key path',
                        upload_id: 'MultipartUploadId',
                        multipart_upload: { parts: (1..6).map { |n| a_hash_including({ part_number: n }) } } })
            )
          end

          it 'supports alternative part sizes' do
            object.copy_from('source-bucket/source%20key', multipart_copy: true, min_part_size: 5 * 1024 * 1024)

            expect(get_requests(client, :create_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :create_multipart_upload)).to(
              include({ bucket: 'bucket', key: 'unescaped/key path', content_type: 'application/json' })
            )

            expect((requests = get_requests(client, :upload_part_copy).map { |req| req[:params] }).size).to eq(60)
            requests.sort_by { |r| r[:part_number] }.each.with_index do |part, i|
              n = i + 1
              range = "bytes=#{(n - 1) * 5_242_880}-#{n * 5_242_880 - 1}"

              expect(part).to eq({ bucket: 'bucket',
                                   key: 'unescaped/key path',
                                   part_number: n,
                                   copy_source: 'source-bucket/source%20key',
                                   copy_source_range: range,
                                   upload_id: 'MultipartUploadId' })
            end

            expect(get_requests(client, :complete_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :complete_multipart_upload)).to(
              include({
                        bucket: 'bucket',
                        key: 'unescaped/key path',
                        upload_id: 'MultipartUploadId',
                        multipart_upload: { parts: (1..60).map { |n| a_hash_including({ part_number: n }) } }
                      })
            )
          end

          it 'aborts the upload on errors', thread_report_on_exception: false do
            client.stub_responses(:upload_part_copy, Array.new(10, 'NoSuchKey'))

            expect do
              object.copy_from('source-bucket/source%20key', multipart_copy: true)
            end.to raise_error(Aws::S3::Errors::NoSuchKey)
            expect(get_requests(client, :abort_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :abort_multipart_upload)).to(
              eq({ bucket: 'bucket', key: 'unescaped/key path', upload_id: 'MultipartUploadId' })
            )
          end

          it 'rejects files smaller than 5MB' do
            client.stub_responses(:head_object, client.stub_data(:head_object, content_length: 4 * 1024 * 1024)) # 4MB

            expect do
              object.copy_from('source-bucket/source%20key', multipart_copy: true)
            end.to raise_error(ArgumentError, /smaller than 5MB/)
          end

          it 'accepts file size option to avoid HEAD request' do
            object.copy_from('source-bucket/source%20key', multipart_copy: true, content_length: 10 * 1024 * 1024)

            expect(get_requests(client, :head_object).size).to be_zero
          end

          context 'when target and source objects are in different regions' do
            let(:content_length) { 10 * 1024 * 1024 }
            let(:source_region)  { 'ap-southeast-1' }
            let(:source_bucket)  { 'source-bucket' }
            let(:target_bucket)  { 'target-bucket' }
            let(:key)            { 'my/source-key' }
            let(:source_client)  { S3::Client.new(stub_responses: true) }
            let(:target_client)  { S3::Client.new(stub_responses: true) }
            let(:source_object)  { S3::Object.new(bucket_name: source_bucket, key: key, client: source_client) }
            let(:target_object)  { S3::Object.new(bucket_name: target_bucket, key: key, client: target_client) }
            let(:head_response)  { Types::HeadObjectOutput.new(content_length: content_length) }

            before do
              source_client.stub_responses(
                :head_object,
                client.stub_data(:head_object, content_length: 10 * 1024 * 1024) # 10MB
              )
            end

            context 'when the source is an S3::Object' do
              it 'uses the content-length of the source object and region' do
                target_object.copy_from(source_object, multipart_copy: true)

                expect(get_requests(target_client, :head_object).size).to be_zero
                expect(get_requests(source_client, :head_object).size).to eq(1)
                expect(get_request_params(source_client, :head_object)).to(eq({ bucket: source_bucket, key: key }))
              end
            end

            context 'when the source is a Hash' do
              let(:source_hash) { { bucket: source_bucket, key: key } }

              it 'uses :copy_source_client to query content_length' do
                target_object.copy_from(source_hash,
                                        multipart_copy: true, copy_source_client: source_client)

                expect(get_requests(target_client, :head_object).size).to be_zero
                expect(get_requests(source_client, :head_object).size).to eq(1)
                expect(get_request_params(source_client, :head_object)).to(eq({ bucket: source_bucket, key: key }))
              end

              it 'uses :copy_source_region to construct a client' do
                allow(S3::Client).to receive(:new).and_call_original
                expect(S3::Client).to(
                  receive(:new).with(hash_including(region: source_region)).and_return(source_client)
                )

                target_object.copy_from(source_hash, multipart_copy: true, copy_source_region: source_region)

                expect(get_requests(target_client, :head_object).size).to be_zero
                expect(get_requests(source_client, :head_object).size).to eq(1)
                expect(get_request_params(source_client, :head_object)).to(eq({ bucket: source_bucket, key: key }))
              end
            end

            context 'when the source is a String' do
              let(:source_string) { "#{source_bucket}/#{key}" }

              it 'uses :copy_source_client to query content_length' do
                target_object.copy_from(source_string, multipart_copy: true, copy_source_client: source_client)

                expect(get_requests(target_client, :head_object).size).to be_zero
                expect(get_requests(source_client, :head_object).size).to eq(1)
                expect(get_request_params(source_client, :head_object)).to(eq({ bucket: source_bucket, key: key }))
              end

              it 'uses :copy_source_region to construct a client' do
                allow(S3::Client).to receive(:new).and_call_original
                expect(S3::Client).to(
                  receive(:new).with(hash_including(region: source_region)).and_return(source_client)
                )

                target_object.copy_from(source_string, multipart_copy: true, copy_source_region: source_region)

                expect(get_requests(target_client, :head_object).size).to be_zero
                expect(get_requests(source_client, :head_object).size).to eq(1)
                expect(get_request_params(source_client, :head_object)).to(eq({ bucket: source_bucket, key: key }))
              end
            end
          end

          it 'does not modify given options' do
            options = { multipart_copy: true }
            object.copy_from('source-bucket/source%20key', options)
            expect(options).to eq(multipart_copy: true)
          end
        end

        context 'with multipart_copy: true and checksum_algorithm specified' do
          before(:each) do
            client.stub_responses(
              :head_object,
              client.stub_data(:head_object, content_length: 300 * 1024 * 1024) # 300MB
            )
          end

          it 'includes the checksum algorithm when one is specified' do
            object.copy_from('source-bucket/source%20key', multipart_copy: true, checksum_algorithm: 'SHA256')

            expect(get_requests(client, :create_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :create_multipart_upload)).to(
              include({ bucket: 'bucket', key: 'unescaped/key path', checksum_algorithm: 'SHA256' })
            )

            expect((requests = get_requests(client, :upload_part_copy).map { |req| req[:params] }).size).to eq(6)
            requests.sort_by { |req| req[:part_number] }.each.with_index do |part, i|
              n = i + 1
              range = "bytes=#{(n - 1) * 52_428_800}-#{n * 52_428_800 - 1}"

              expect(part).to eq({ bucket: 'bucket',
                                   key: 'unescaped/key path',
                                   part_number: n,
                                   copy_source: 'source-bucket/source%20key',
                                   copy_source_range: range,
                                   upload_id: 'MultipartUploadId' })
            end

            expect(get_requests(client, :complete_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :complete_multipart_upload)).to(
              include({ bucket: 'bucket',
                        key: 'unescaped/key path',
                        upload_id: 'MultipartUploadId',
                        multipart_upload: { parts: (1..6).map { |n| a_hash_including({ part_number: n }) } } })
            )
          end
        end

        context 'with multipart_copy: true and use_source_parts: true' do
          before(:each) do
            size      = 300 * 1024 * 1024 # 300MB
            part_size = size / 3          # 3 100MB parts

            client.stub_responses(:head_object,
                                  [client.stub_data(:head_object, content_length: size),
                                   client.stub_data(:head_object, content_length: part_size, parts_count: 3),
                                   client.stub_data(:head_object, content_length: part_size, parts_count: 3),
                                   client.stub_data(:head_object, content_length: part_size, parts_count: 3),
                                   client.stub_data(:head_object, content_length: part_size, parts_count: 3)])
          end

          it 'uses part sizes specified on the source' do
            object.copy_from('source-bucket/source%20key', multipart_copy: true, use_source_parts: true)

            expect(get_requests(client, :create_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :create_multipart_upload)).to(
              include({ bucket: 'bucket', key: 'unescaped/key path' })
            )

            expect((requests = get_requests(client, :upload_part_copy).map { |req| req[:params] }).size).to eq(3)
            requests.sort_by { |req| req[:part_number] }.each.with_index do |part, i|
              n = i + 1
              range = "bytes=#{(n - 1) * 104_857_600}-#{n * 104_857_600 - 1}"

              expect(part).to eq({ bucket: 'bucket',
                                   key: 'unescaped/key path',
                                   part_number: n,
                                   copy_source: 'source-bucket/source%20key',
                                   copy_source_range: range,
                                   upload_id: 'MultipartUploadId' })
            end

            expect(get_requests(client, :complete_multipart_upload).size).to eq(1)
            expect(get_request_params(client, :complete_multipart_upload)).to(
              include({ bucket: 'bucket',
                        key: 'unescaped/key path',
                        upload_id: 'MultipartUploadId',
                        multipart_upload: { parts: (1..3).map { |n| a_hash_including({ part_number: n }) } } })
            )
          end
        end
      end
    end
  end
end
