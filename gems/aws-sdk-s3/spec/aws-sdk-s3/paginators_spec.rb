# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Paginators
      describe ListObjects do
        let(:paginator) { ListObjects.new }

        describe '#next_tokens' do
          it 'returns empty hash when is_truncated is false' do
            data = Types::ListObjectsOutput.new(is_truncated: false, next_marker: 'token')
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'uses next_marker when available' do
            data = Types::ListObjectsOutput.new(is_truncated: true, next_marker: 'marker-1')
            expect(paginator.next_tokens(data)).to eq(marker: 'marker-1')
          end

          it 'falls back to last content key when next_marker is nil' do
            obj = Types::Object.new(key: 'last-key')
            data = Types::ListObjectsOutput.new(is_truncated: true, next_marker: nil, contents: [obj])
            expect(paginator.next_tokens(data)).to eq(marker: 'last-key')
          end

          it 'returns empty hash when next_marker is nil and contents is empty' do
            data = Types::ListObjectsOutput.new(is_truncated: true, next_marker: nil, contents: [])
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns empty hash when next_marker is nil and contents is nil' do
            data = Types::ListObjectsOutput.new(is_truncated: true, next_marker: nil, contents: nil)
            expect(paginator.next_tokens(data)).to eq({})
          end
        end

        describe '#prev_tokens' do
          it 'returns empty hash when marker is nil' do
            expect(paginator.prev_tokens({})).to eq({})
          end

          it 'returns empty hash when marker is empty' do
            expect(paginator.prev_tokens(marker: '')).to eq({})
          end

          it 'returns marker when present' do
            expect(paginator.prev_tokens(marker: 'abc')).to eq(marker: 'abc')
          end
        end

        describe '#items' do
          it 'returns contents' do
            data = Types::ListObjectsOutput.new(contents: %w[a b c])
            expect(paginator.items(data)).to eq(%w[a b c])
          end

          it 'returns nil when contents is nil' do
            data = Types::ListObjectsOutput.new(contents: nil)
            expect(paginator.items(data)).to be_nil
          end
        end

        describe 'multi-page walk' do
          it 'paginates through multiple pages using stub_responses', :jruby_skip do
            client = Aws::S3::Client.new(
              stub_responses: true,
              endpoint: 'https://s3.amazonaws.com'
            )
            client.stub_responses(
              :list_objects,
              {
                is_truncated: true,
                next_marker: 'key-2',
                contents: [Types::Object.new(key: 'key-1'), Types::Object.new(key: 'key-2')]
              },
              {
                is_truncated: true,
                next_marker: 'key-4',
                contents: [Types::Object.new(key: 'key-3'), Types::Object.new(key: 'key-4')]
              },
              {
                is_truncated: false,
                contents: [Types::Object.new(key: 'key-5')]
              }
            )

            pages = []
            client.list_objects(bucket: 'test').each_page { |page| pages << page }
            expect(pages.size).to eq(3)
            expect(pages[0].contents.map(&:key)).to eq(%w[key-1 key-2])
            expect(pages[1].contents.map(&:key)).to eq(%w[key-3 key-4])
            expect(pages[2].contents.map(&:key)).to eq(['key-5'])
          end
        end

        describe 'termination' do
          it 'terminates when is_truncated is false even with next_marker present' do
            data = Types::ListObjectsOutput.new(is_truncated: false, next_marker: 'should-be-ignored')
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'terminates when tokens match prev_tokens (infinite-loop guard)' do
            data = Types::ListObjectsOutput.new(is_truncated: true, next_marker: 'same-token')
            next_t = paginator.next_tokens(data)
            prev_t = paginator.prev_tokens(marker: 'same-token')
            expect(next_t).to eq(prev_t)
          end
        end
      end

      describe ListObjectVersions do
        let(:paginator) { ListObjectVersions.new }

        describe '#next_tokens' do
          it 'returns empty hash when is_truncated is false' do
            data = Types::ListObjectVersionsOutput.new(is_truncated: false)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns compound cursor tokens' do
            data = Types::ListObjectVersionsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_version_id_marker: 'ver-1'
            )
            expect(paginator.next_tokens(data)).to eq(
              key_marker: 'key-1',
              version_id_marker: 'ver-1'
            )
          end

          it 'omits empty tokens from compound cursor' do
            data = Types::ListObjectVersionsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_version_id_marker: ''
            )
            expect(paginator.next_tokens(data)).to eq(key_marker: 'key-1')
          end

          it 'omits nil tokens from compound cursor' do
            data = Types::ListObjectVersionsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_version_id_marker: nil
            )
            expect(paginator.next_tokens(data)).to eq(key_marker: 'key-1')
          end
        end

        describe '#prev_tokens' do
          it 'returns empty hash when no tokens present' do
            expect(paginator.prev_tokens({})).to eq({})
          end

          it 'returns compound cursor from params' do
            params = { key_marker: 'key-1', version_id_marker: 'ver-1' }
            expect(paginator.prev_tokens(params)).to eq(params)
          end
        end

        describe '#items' do
          it 'returns versions' do
            data = Types::ListObjectVersionsOutput.new(versions: %w[v1 v2])
            expect(paginator.items(data)).to eq(%w[v1 v2])
          end
        end

        describe 'termination' do
          it 'terminates when tokens match prev_tokens (infinite-loop guard)' do
            data = Types::ListObjectVersionsOutput.new(
              is_truncated: true,
              next_key_marker: 'k',
              next_version_id_marker: 'v'
            )
            next_t = paginator.next_tokens(data)
            prev_t = paginator.prev_tokens(key_marker: 'k', version_id_marker: 'v')
            expect(next_t).to eq(prev_t)
          end
        end
      end

      describe ListMultipartUploads do
        let(:paginator) { ListMultipartUploads.new }

        describe '#next_tokens' do
          it 'returns empty hash when is_truncated is false' do
            data = Types::ListMultipartUploadsOutput.new(is_truncated: false)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns compound cursor tokens' do
            data = Types::ListMultipartUploadsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_upload_id_marker: 'upload-1'
            )
            expect(paginator.next_tokens(data)).to eq(
              key_marker: 'key-1',
              upload_id_marker: 'upload-1'
            )
          end

          it 'omits empty tokens from compound cursor' do
            data = Types::ListMultipartUploadsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_upload_id_marker: ''
            )
            expect(paginator.next_tokens(data)).to eq(key_marker: 'key-1')
          end

          it 'omits nil tokens from compound cursor' do
            data = Types::ListMultipartUploadsOutput.new(
              is_truncated: true,
              next_key_marker: 'key-1',
              next_upload_id_marker: nil
            )
            expect(paginator.next_tokens(data)).to eq(key_marker: 'key-1')
          end
        end

        describe '#prev_tokens' do
          it 'returns empty hash when no tokens present' do
            expect(paginator.prev_tokens({})).to eq({})
          end

          it 'returns compound cursor from params' do
            params = { key_marker: 'key-1', upload_id_marker: 'upload-1' }
            expect(paginator.prev_tokens(params)).to eq(params)
          end
        end

        describe '#items' do
          it 'returns uploads' do
            data = Types::ListMultipartUploadsOutput.new(uploads: %w[u1 u2])
            expect(paginator.items(data)).to eq(%w[u1 u2])
          end
        end

        describe 'termination' do
          it 'terminates when tokens match prev_tokens (infinite-loop guard)' do
            data = Types::ListMultipartUploadsOutput.new(
              is_truncated: true,
              next_key_marker: 'k',
              next_upload_id_marker: 'u'
            )
            next_t = paginator.next_tokens(data)
            prev_t = paginator.prev_tokens(key_marker: 'k', upload_id_marker: 'u')
            expect(next_t).to eq(prev_t)
          end
        end
      end
    end
  end
end
