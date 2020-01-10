require_relative '../spec_helper'

module Aws
  module S3
    describe Bucket do
      describe '#delete!' do
        let(:client) { S3::Client.new(stub_responses: true) }

        let(:bucket) { Bucket.new('bucket-name', client: client) }

        let(:list_object_versions_request) do
          {
            versions: [
              { key: 'key', version_id: 'vid-1' },
              { key: 'key', version_id: 'vid-3' },
              { key: 'key', version_id: 'vid-5' }
            ],
            delete_markers: [
              { key: 'key', version_id: 'vid-2' },
              { key: 'key', version_id: 'vid-4' }
            ]
          }
        end

        let(:delete_bucket_request) do
          {
            bucket: 'bucket-name',
            delete: {
              objects: match_array(
                [
                  { key: 'key', version_id: 'vid-1' },
                  { key: 'key', version_id: 'vid-2' },
                  { key: 'key', version_id: 'vid-3' },
                  { key: 'key', version_id: 'vid-4' },
                  { key: 'key', version_id: 'vid-5' }
                ]
              )
            }
          }
        end

        context 'the bucket deletes without failure' do
          it 'deletes object versions and then deletes the bucket' do
            client.stub_responses(
              :list_object_versions,
              list_object_versions_request
            )

            expect(client).to receive(:delete_objects)
              .with(delete_bucket_request)
              .and_call_original

            expect(client).to receive(:delete_bucket)
              .with(bucket: 'bucket-name')
              .and_call_original

            bucket.delete!
          end
        end

        context 'the bucket raises a Errors::BucketNotEmpty exception' do
          let(:default_initial_wait) { 1.3 }
          let(:second_attempt_wait)  { default_initial_wait**2 }

          let(:bucket_not_empty_exception) do
            Errors::BucketNotEmpty.new nil, ''
          end

          it 'retries' do
            client.stub_responses(
              :list_object_versions,
              list_object_versions_request
            )

            expect(client).to receive(:delete_objects)
              .with(delete_bucket_request)
              .exactly(3).times

            expect(client).to receive(:delete_bucket)
              .with(bucket: 'bucket-name')
              .and_raise(bucket_not_empty_exception).ordered

            expect(Kernel).to receive(:sleep).with(default_initial_wait).ordered

            expect(client).to receive(:delete_bucket)
              .with(bucket: 'bucket-name')
              .and_raise(bucket_not_empty_exception).ordered

            expect(Kernel).to receive(:sleep).with(second_attempt_wait).ordered

            expect(client).to receive(:delete_bucket)
              .with(bucket: 'bucket-name').ordered
              .and_call_original

            bucket.delete!
          end

          context 'the :initial_wait option is set' do
            let(:initial_wait) { 3 }

            it 'respects it' do
              client.stub_responses(
                :list_object_versions,
                list_object_versions_request
              )

              expect(client).to receive(:delete_objects)
                .with(delete_bucket_request)
                .exactly(3).times

              expect(client).to receive(:delete_bucket)
                .with(bucket: 'bucket-name')
                .and_raise(bucket_not_empty_exception).ordered

              expect(Kernel).to receive(:sleep).with(initial_wait).ordered

              expect(client).to receive(:delete_bucket)
                .with(bucket: 'bucket-name')
                .and_raise(bucket_not_empty_exception).ordered

              expect(Kernel).to receive(:sleep).with(initial_wait**2).ordered

              expect(client).to receive(:delete_bucket)
                .with(bucket: 'bucket-name').ordered
                .and_call_original

              bucket.delete!(initial_wait: initial_wait)
            end
          end

          context 'the :max_attempts option is set' do
            let(:max_attempts) { 1 }

            it 'respects it' do
              client.stub_responses(
                :list_object_versions,
                list_object_versions_request
              )

              expect(client).to receive(:delete_objects)
                .with(delete_bucket_request)
                .and_call_original

              expect(client).to receive(:delete_bucket)
                .with(bucket: 'bucket-name')
                .and_raise(bucket_not_empty_exception)

              expect do
                bucket.delete!(max_attempts: max_attempts)
              end.to raise_exception(bucket_not_empty_exception)
            end
          end
        end
      end
    end
  end
end
