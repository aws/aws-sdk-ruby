# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ObjectMultipartCopier do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:copier) { ObjectMultipartCopier.new(client: client) }
      let(:source_client) { S3::Client.new(stub_responses: true) }

      let(:copy_source) { 'source-bucket/source-key' }
      let(:bucket) { 'dest-bucket' }
      let(:key) { 'dest-key' }
      let(:content_length) { 50 * 1024 * 1024 } # 50MB
      let(:base_options) do
        { bucket: bucket, key: key, copy_source: copy_source }
      end

      before(:each) do
        client.stub_responses(:head_object, client.stub_data(:head_object, content_length: content_length))
        client.stub_responses(:create_multipart_upload, upload_id: 'upload-id')
      end

      describe '#copy' do
        it 'copies a multipart object' do
          expect(client).to receive(:create_multipart_upload).and_call_original
          expect(client).to receive(:upload_part_copy).at_least(:once).and_call_original
          expect(client).to receive(:complete_multipart_upload).and_call_original

          copier.copy(base_options)
        end

        it 'returns the complete multipart upload response' do
          resp = copier.copy(base_options)

          expect(resp).not_to be_nil
        end

        it 'respects min_part_size' do
          small_copier = ObjectMultipartCopier.new(client: client, min_part_size: 10 * 1024 * 1024)

          expect(client).to receive(:upload_part_copy).exactly(5).times.and_call_original

          small_copier.copy(base_options)
        end

        it 'uses copy_source_client for cross-region copies' do
          source_client.stub_responses(:head_object, client.stub_data(:head_object, content_length: content_length))
          expect(source_client).to receive(:head_object).and_call_original
          expect(client).not_to receive(:head_object)

          copier.copy(base_options.merge(copy_source_client: source_client))
        end

        it 'raises ArgumentError for objects smaller than 5MB' do
          client.stub_responses(:head_object, client.stub_data(:head_object, content_length: 4 * 1024 * 1024))
          expect { copier.copy(base_options) }.to raise_error(ArgumentError, /smaller than 5MB/)
        end

        it 'aborts the upload on failure', thread_report_on_exception: false do
          client.stub_responses(:upload_part_copy, 'NoSuchKey')

          expect(client)
            .to receive(:abort_multipart_upload)
            .with(hash_including(upload_id: 'upload-id'))
            .and_call_original

          expect { copier.copy(base_options) }.to raise_error(Aws::S3::Errors::NoSuchKey)
        end

        context 'tags' do
          context 'when directive is set as COPY' do
            before do
              client.stub_responses(:get_object_tagging, { tag_set: [{ key: 'source-key', value: 'source-value' }] })
            end

            it 'copies source tags to destination object' do
              expect(client).to receive(:get_object_tagging)
                .with(hash_including(bucket: 'source-bucket', key: 'source-key'))
                .and_call_original
              expect(client).to receive(:put_object_tagging)
                .with(hash_including(bucket: 'dest-bucket', key: 'dest-key'))
                .and_call_original

              copier.copy(base_options.merge(tags_directive: 'COPY'))
            end

            it 'returns the copy response after applying tags' do
              resp = copier.copy(base_options.merge(tags_directive: 'COPY'))

              expect(resp).not_to be_nil
            end

            it 'overrides user-supplied tags' do
              expect(client).to receive(:create_multipart_upload)
                .with(hash_not_including(:tagging))
                .and_call_original
              expect(client).to receive(:put_object_tagging).and_call_original

              copier.copy(base_options.merge(tags_directive: 'COPY', tagging: 'user=ignored'))
            end
          end

          context 'when directive is set as REPLACE' do
            it 'uses users tags on destination object' do
              expect(client).not_to receive(:get_object_tagging)
              expect(client).to receive(:put_object_tagging).with(
                hash_including(
                  bucket: 'dest-bucket',
                  key: 'dest-key',
                  tagging: { tag_set: [{ key: 'user-key', value: 'user-value' }] }
                )
              ).and_call_original

              copier.copy(base_options.merge(tags_directive: 'REPLACE', tagging: 'user-key=user-value'))
            end
          end

          context 'when tags are given but no directives' do
            it 'copies users tags on destination object' do
              expect(client).not_to receive(:get_object_tagging)
              expect(client).not_to receive(:put_object_tagging)
              expect(client).to receive(:create_multipart_upload)
                .with(hash_including(tagging: 'user-key=user-value'))
                .and_call_original

              copier.copy(base_options.merge(tagging: 'user-key=user-value'))
            end
          end
        end

        context 'metadata' do
          context 'when directive is set as REPLACE' do
            it 'uses users metadata on destination object' do
              expect(client).to receive(:create_multipart_upload)
                .with(
                  hash_including(
                    metadata: { 'user-key' => 'user-value' },
                    content_type: 'application/custom'
                  )
                ).and_call_original

              copier.copy(
                base_options.merge(
                  metadata_directive: 'REPLACE',
                  metadata: { 'user-key' => 'user-value' },
                  content_type: 'application/custom'
                )
              )
            end
          end

          context 'when directive is not set' do
            it 'copies over source metadata to destination object' do
              client.stub_responses(
                :head_object,
                client.stub_data(
                  :head_object,
                  content_length: content_length,
                  content_type: 'text/plain',
                  metadata: { 'source-key' => 'source-value' }
                )
              )
              expect(client).to receive(:create_multipart_upload)
                .with(hash_including(content_type: 'text/plain', metadata: { 'source-key' => 'source-value' }))
                .and_call_original
              copier.copy(base_options)
            end
          end

          context 'when content_length is given' do
            it 'does not copy over source metadata' do
              expect(client).not_to receive(:head_object)
              expect(client).to receive(:create_multipart_upload)
                .with(hash_not_including(:metadata, :content_type))
                .and_call_original

              copier.copy(base_options.merge(content_length: content_length))
            end
          end
        end

        context 'annotations' do
          context 'when directive is set as COPY' do
            before do
              client.stub_responses(
                :list_object_annotations,
                {
                  annotations: [
                    { annotation_name: 'ann-1', size: 10, last_modified: Time.utc(2026, 6, 11) },
                    { annotation_name: 'ann-2', size: 15, last_modified: Time.utc(2026, 6, 11) }
                  ]
                }
              )
              client.stub_responses(:get_object_annotation, { annotation_payload: 'payload-data' })
              client.stub_responses(:complete_multipart_upload, { version_id: 'dest-v1', etag: 'dest-etag' })
            end

            it 'copies source annotations to destination' do
              expect(client).to receive(:list_object_annotations)
                .with(hash_including(bucket: 'source-bucket', key: 'source-key'))
                .and_call_original
              expect(client).to receive(:get_object_annotation)
                .with(hash_including(annotation_name: 'ann-1'))
                .and_call_original
              expect(client).to receive(:get_object_annotation)
                .with(hash_including(annotation_name: 'ann-2'))
                .and_call_original
              expect(client).to receive(:put_object_annotation)
                .with(
                  hash_including(
                    bucket: 'dest-bucket',
                    key: 'dest-key',
                    annotation_name: 'ann-1',
                    version_id: 'dest-v1',
                    object_if_match: 'dest-etag'
                  )
                ) do |params|
                  payload = params[:annotation_payload]
                  payload = payload.read if payload.respond_to?(:read)
                  expect(payload).to eq('payload-data')
                end
              expect(client).to receive(:put_object_annotation)
                .with(
                  hash_including(
                    bucket: 'dest-bucket',
                    key: 'dest-key',
                    annotation_name: 'ann-2',
                    version_id: 'dest-v1',
                    object_if_match: 'dest-etag'
                  )
                ) do |params|
                  payload = params[:annotation_payload]
                  payload = payload.read if payload.respond_to?(:read)
                  expect(payload).to eq('payload-data')
                end

              copier.copy(base_options.merge(annotations_directive: 'COPY'))
            end

            it 'returns the copy response after applying annotations' do
              resp = copier.copy(base_options.merge(annotations_directive: 'COPY'))

              expect(resp).not_to be_nil
            end

            it 'raises on partial failure when applying annotations' do
              client.stub_responses(:put_object_annotation, [{}, 'ServiceError'])

              expect { copier.copy(base_options.merge(annotations_directive: 'COPY')) }
                .to raise_error(StandardError) do |error|
                expect(error.message).to include('ann-2')
                expect(error.message).to include('Succeeded')
                expect(error.message).to include('ann-1')
              end
            end
          end
        end
      end
    end
  end
end
