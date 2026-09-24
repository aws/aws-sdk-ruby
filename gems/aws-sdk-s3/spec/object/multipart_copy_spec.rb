# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      let(:object) do
        S3::Object.new('bucket', 'unescaped/key path', stub_responses: true)
      end

      let(:client) { object.client }

      def api_requests(operation_name)
        client.api_requests.select { |req| req[:operation_name] == operation_name }
      end

      def request_params(operation_name)
        api_requests(operation_name).first[:params]
      end

      describe '#copy_to' do
        it 'accepts a string target' do
          object.copy_to('target-bucket/target-key')

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path'
          )
        end

        it 'accepts a hash target' do
          object.copy_to(bucket: 'target-bucket', key: 'target-key')

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path'
          )
        end

        it 'merges additional options from a hash target' do
          object.copy_to(bucket: 'target-bucket', key: 'target-key', content_type: 'text/plain')

          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path', content_type: 'text/plain'
          )
        end

        it 'accepts an S3::Object target' do
          target = S3::Object.new('target-bucket', 'target-key', stub_responses: true)
          object.copy_to(target)

          expect(api_requests(:copy_object).size).to eq(1)
          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key', copy_source: 'bucket/unescaped/key%20path'
          )
        end

        it 'passes additional options' do
          object.copy_to('target-bucket/target-key', acl: 'public-read')

          expect(request_params(:copy_object)).to eq(
            bucket: 'target-bucket', key: 'target-key',
            copy_source: 'bucket/unescaped/key%20path', acl: 'public-read'
          )
        end

        it 'raises an error on invalid targets' do
          expect { object.copy_to(:target) }.to raise_error(ArgumentError)
        end

        it 'does not return nil when a single-shot copy succeeds' do
          resp = object.copy_to('target-bucket/target-key')

          expect(resp).not_to be_nil
        end

        it 'does not return nil when a multipart copy succeeds' do
          client.stub_responses(:head_object, client.stub_data(:head_object, content_length: 50 * 1024 * 1024))
          client.stub_responses(:create_multipart_upload, upload_id: 'upload-id')

          resp = object.copy_to('target-bucket/target-key', multipart_copy: true)

          expect(resp).not_to be_nil
        end
      end

      describe '#copy_from' do
        context 'single-shot (default)' do
          it 'accepts a string source' do
            object.copy_from('source-bucket/source/key%20path')

            expect(api_requests(:copy_object).size).to eq(1)
            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path', copy_source: 'source-bucket/source/key%20path'
            )
          end

          it 'accepts a hash source' do
            object.copy_from(bucket: 'source-bucket', key: 'unescaped/source/key path')

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
          end

          it 'accepts a hash source with version_id' do
            object.copy_from(bucket: 'src-bucket', key: 'src key', version_id: 'src-version-id')

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'src-bucket/src%20key?versionId=src-version-id'
            )
          end

          it 'accepts an S3::Object source' do
            src = S3::Object.new('source-bucket', 'unescaped/source/key path', stub_responses: true)
            object.copy_from(src)

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
          end

          it 'accepts an S3::ObjectSummary source' do
            src = S3::ObjectSummary.new('source-bucket', 'unescaped/source/key path', stub_responses: true)
            object.copy_from(src)

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path'
            )
          end

          it 'accepts an S3::ObjectVersion source' do
            src = S3::ObjectVersion.new(
              'source-bucket', 'unescaped/source/key path', 'source-version-id', stub_responses: true
            )
            object.copy_from(src)

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'source-bucket/unescaped/source/key%20path?versionId=source-version-id'
            )
          end

          it 'supports the deprecated :copy_source form' do
            object.copy_from(copy_source: 'source-bucket/escaped/source/key%20path')

            expect(request_params(:copy_object)).to eq(
              bucket: 'bucket', key: 'unescaped/key path',
              copy_source: 'source-bucket/escaped/source/key%20path'
            )
          end

          it 'passes additional options' do
            object.copy_from('source-bucket/source%20key', acl: 'public-read')

            expect(request_params(:copy_object)).to include(acl: 'public-read')
          end

          it 'raises an error on invalid sources' do
            expect { object.copy_from(:source) }.to raise_error(ArgumentError)
          end
        end

        context 'multipart (multipart_copy: true)' do
          before(:each) do
            client.stub_responses(
              :head_object,
              client.stub_data(:head_object, content_length: 300 * 1024 * 1024)
            )
          end

          it 'routes to multipart APIs' do
            object.copy_from('source-bucket/source%20key', multipart_copy: true)

            expect(api_requests(:copy_object).size).to eq(0)
            expect(api_requests(:create_multipart_upload).size).to eq(1)
            expect(api_requests(:upload_part_copy).size).to be >= 1
            expect(api_requests(:complete_multipart_upload).size).to eq(1)
          end

          it 'does not modify the given options hash' do
            options = { multipart_copy: true }
            object.copy_from('source-bucket/source%20key', options)
            expect(options).to eq(multipart_copy: true)
          end
        end
      end
    end
  end
end
