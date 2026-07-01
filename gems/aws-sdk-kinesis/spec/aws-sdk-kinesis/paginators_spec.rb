# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Kinesis
    module Paginators
      describe DescribeStream do
        let(:paginator) { DescribeStream.new }

        describe '#next_tokens' do
          it 'returns empty hash when has_more_shards is false' do
            desc = Types::StreamDescription.new(has_more_shards: false, shards: [])
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns empty hash when has_more_shards is nil' do
            desc = Types::StreamDescription.new(has_more_shards: nil, shards: [])
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns last shard id as exclusive_start_shard_id' do
            shards = [
              Types::Shard.new(shard_id: 'shard-000'),
              Types::Shard.new(shard_id: 'shard-001')
            ]
            desc = Types::StreamDescription.new(has_more_shards: true, shards: shards)
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq(exclusive_start_shard_id: 'shard-001')
          end

          it 'returns empty hash when shards is empty' do
            desc = Types::StreamDescription.new(has_more_shards: true, shards: [])
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns empty hash when shards is nil' do
            desc = Types::StreamDescription.new(has_more_shards: true, shards: nil)
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns empty hash when stream_description is nil' do
            data = Types::DescribeStreamOutput.new(stream_description: nil)
            expect(paginator.next_tokens(data)).to eq({})
          end
        end

        describe '#prev_tokens' do
          it 'returns empty hash when exclusive_start_shard_id is nil' do
            expect(paginator.prev_tokens({})).to eq({})
          end

          it 'returns empty hash when exclusive_start_shard_id is empty' do
            expect(paginator.prev_tokens(exclusive_start_shard_id: '')).to eq({})
          end

          it 'returns exclusive_start_shard_id when present' do
            params = { exclusive_start_shard_id: 'shard-001' }
            expect(paginator.prev_tokens(params)).to eq(params)
          end
        end

        describe '#items' do
          it 'returns shards from stream_description' do
            shards = [Types::Shard.new(shard_id: 'shard-000')]
            desc = Types::StreamDescription.new(shards: shards)
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.items(data)).to eq(shards)
          end

          it 'returns nil when stream_description is nil' do
            data = Types::DescribeStreamOutput.new(stream_description: nil)
            expect(paginator.items(data)).to be_nil
          end
        end

        describe 'multi-page walk' do
          it 'paginates through multiple pages using stub_responses', :jruby_skip do
            client = Aws::Kinesis::Client.new(
              stub_responses: true,
              endpoint: 'https://kinesis.us-east-1.amazonaws.com'
            )
            client.stub_responses(
              :describe_stream,
              {
                stream_description: {
                  stream_name: 'test-stream',
                  stream_arn: 'arn:aws:kinesis:us-east-1:123456789012:stream/test-stream',
                  stream_status: 'ACTIVE',
                  shards: [{ shard_id: 'shard-000' }, { shard_id: 'shard-001' }],
                  has_more_shards: true,
                  retention_period_hours: 24
                }
              },
              {
                stream_description: {
                  stream_name: 'test-stream',
                  stream_arn: 'arn:aws:kinesis:us-east-1:123456789012:stream/test-stream',
                  stream_status: 'ACTIVE',
                  shards: [{ shard_id: 'shard-002' }],
                  has_more_shards: false,
                  retention_period_hours: 24
                }
              }
            )

            pages = []
            client.describe_stream(stream_name: 'test-stream').each_page { |p| pages << p }
            expect(pages.size).to eq(2)
            expect(pages[0].stream_description.shards.map(&:shard_id)).to eq(%w[shard-000 shard-001])
            expect(pages[1].stream_description.shards.map(&:shard_id)).to eq(['shard-002'])
          end
        end

        describe 'termination' do
          it 'terminates when has_more_shards is false even with shards present' do
            shards = [Types::Shard.new(shard_id: 'shard-999')]
            desc = Types::StreamDescription.new(has_more_shards: false, shards: shards)
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'terminates when tokens match prev_tokens (infinite-loop guard)' do
            shards = [Types::Shard.new(shard_id: 'shard-001')]
            desc = Types::StreamDescription.new(has_more_shards: true, shards: shards)
            data = Types::DescribeStreamOutput.new(stream_description: desc)
            next_t = paginator.next_tokens(data)
            prev_t = paginator.prev_tokens(exclusive_start_shard_id: 'shard-001')
            expect(next_t).to eq(prev_t)
          end
        end
      end
    end
  end
end
