# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ObjectCopier do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:object) { S3::Object.new('dest-bucket', 'dest-key', client: client) }
      let(:copier) { ObjectCopier.new(object) }

      def api_requests(operation_name)
        client.api_requests.select { |r| r[:operation_name] == operation_name }
      end

      def request_params(operation_name)
        api_requests(operation_name).first[:params]
      end

      describe '#copy_from' do
        context 'source types' do
          it 'copies from a String source' do
            copier.copy_from('source-bucket/source-key')

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'dest-bucket', key: 'dest-key', copy_source: 'source-bucket/source-key'
            )
          end

          it 'copies from a Hash source' do
            copier.copy_from(bucket: 'source-bucket', key: 'source key')

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'dest-bucket', key: 'dest-key', copy_source: 'source-bucket/source%20key'
            )
          end

          it 'copies from a Hash source with version_id' do
            copier.copy_from(bucket: 'src-bucket', key: 'src-key', version_id: 'v1')

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'dest-bucket', key: 'dest-key', copy_source: 'src-bucket/src-key?versionId=v1'
            )
          end

          it 'copies from an S3::Object source' do
            source = S3::Object.new('source-bucket', 'source key', stub_responses: true)
            copier.copy_from(source)

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'dest-bucket', key: 'dest-key', copy_source: 'source-bucket/source%20key'
            )
          end

          it 'copies from an S3::ObjectVersion source' do
            source = S3::ObjectVersion.new('source-bucket', 'source key', 'v1', stub_responses: true)
            copier.copy_from(source)

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'dest-bucket', key: 'dest-key', copy_source: 'source-bucket/source%20key?versionId=v1'
            )
          end

          it 'raises ArgumentError on an invalid source' do
            expect { copier.copy_from(:invalid) }.to raise_error(ArgumentError)
          end
        end

        context 'options' do
          it 'forwards additional options to copy_object' do
            copier.copy_from('source-bucket/source-key', acl: 'public-read')

            expect(request_params(:copy_object)).to include(acl: 'public-read')
          end
        end

        context 'multipart' do
          before do
            client.stub_responses(:head_object, client.stub_data(:head_object, content_length: 50 * 1024 * 1024))
            client.stub_responses(:create_multipart_upload, upload_id: 'upload-id')
          end

          it 'copies as multipart when multipart_copy: true' do
            copier.copy_from('source-bucket/source-key', multipart_copy: true)

            expect(api_requests(:copy_object).size).to eq(0)
            expect(api_requests(:create_multipart_upload).size).to eq(1)
            expect(api_requests(:complete_multipart_upload).size).to eq(1)
          end

          it 'uses a source client in copy_source_region' do
            client
            source_client = instance_double(S3::Client)
            multipart_copier = instance_double(ObjectMultipartCopier)

            expect(S3::Client).to receive(:new).with(
              hash_including(region: 'us-west-2', stub_responses: true)
            ).and_return(source_client)
            allow(ObjectMultipartCopier).to receive(:new).and_return(multipart_copier)
            expect(multipart_copier).to receive(:copy).with(
              hash_including(copy_source_client: source_client)
            )

            copier.copy_from(
              'source-bucket/source-key',
              multipart_copy: true,
              copy_source_region: 'us-west-2'
            )
          end
        end
      end

      describe '#copy_to' do
        it 'copies to a String target' do
          copier.copy_to('target-bucket/target-key')

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'dest-bucket/dest-key'
          )
        end

        it 'copies to a Hash target' do
          copier.copy_to(bucket: 'target-bucket', key: 'target-key')

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'dest-bucket/dest-key'
          )
        end

        it 'copies to an S3::Object target' do
          target = S3::Object.new('target-bucket', 'target-key', stub_responses: true)
          copier.copy_to(target)

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'dest-bucket/dest-key'
          )
        end

        it 'raises ArgumentError on an invalid target' do
          expect { copier.copy_to(:invalid) }.to raise_error(ArgumentError)
        end
      end
    end
  end
end
