# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Route53
    module Paginators
      describe ListResourceRecordSets do
        let(:paginator) { ListResourceRecordSets.new }

        describe '#next_tokens' do
          it 'returns empty hash when is_truncated is false' do
            data = Types::ListResourceRecordSetsResponse.new(is_truncated: false)
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'returns all three cursor tokens' do
            data = Types::ListResourceRecordSetsResponse.new(
              is_truncated: true,
              next_record_name: 'example.com',
              next_record_type: 'A',
              next_record_identifier: 'id-1'
            )
            expect(paginator.next_tokens(data)).to eq(
              start_record_name: 'example.com',
              start_record_type: 'A',
              start_record_identifier: 'id-1'
            )
          end

          it 'omits nil tokens from compound cursor' do
            data = Types::ListResourceRecordSetsResponse.new(
              is_truncated: true,
              next_record_name: 'example.com',
              next_record_type: 'A',
              next_record_identifier: nil
            )
            expect(paginator.next_tokens(data)).to eq(
              start_record_name: 'example.com',
              start_record_type: 'A'
            )
          end

          it 'omits empty string tokens from compound cursor' do
            data = Types::ListResourceRecordSetsResponse.new(
              is_truncated: true,
              next_record_name: 'example.com',
              next_record_type: '',
              next_record_identifier: nil
            )
            expect(paginator.next_tokens(data)).to eq(
              start_record_name: 'example.com'
            )
          end
        end

        describe '#prev_tokens' do
          it 'returns empty hash when no tokens present' do
            expect(paginator.prev_tokens({})).to eq({})
          end

          it 'returns compound cursor from params' do
            params = {
              start_record_name: 'example.com',
              start_record_type: 'A',
              start_record_identifier: 'id-1'
            }
            expect(paginator.prev_tokens(params)).to eq(params)
          end

          it 'omits nil tokens' do
            params = { start_record_name: 'example.com', start_record_type: nil }
            expect(paginator.prev_tokens(params)).to eq(start_record_name: 'example.com')
          end
        end

        describe '#items' do
          it 'returns resource_record_sets' do
            data = Types::ListResourceRecordSetsResponse.new(
              resource_record_sets: %w[r1 r2]
            )
            expect(paginator.items(data)).to eq(%w[r1 r2])
          end

          it 'returns nil when resource_record_sets is nil' do
            data = Types::ListResourceRecordSetsResponse.new(resource_record_sets: nil)
            expect(paginator.items(data)).to be_nil
          end
        end

        describe 'multi-page walk' do
          it 'paginates through multiple pages using stub_responses', :jruby_skip do
            client = Aws::Route53::Client.new(
              stub_responses: true,
              endpoint: 'https://route53.amazonaws.com'
            )
            client.stub_responses(
              :list_resource_record_sets,
              {
                is_truncated: true,
                next_record_name: 'b.example.com',
                next_record_type: 'A',
                resource_record_sets: [{ name: 'a.example.com', type: 'A' }],
                max_items: 1
              },
              {
                is_truncated: false,
                resource_record_sets: [{ name: 'b.example.com', type: 'A' }],
                max_items: 1
              }
            )

            pages = []
            client.list_resource_record_sets(hosted_zone_id: 'Z1').each_page { |p| pages << p }
            expect(pages.size).to eq(2)
            expect(pages[0].resource_record_sets.first.name).to eq('a.example.com')
            expect(pages[1].resource_record_sets.first.name).to eq('b.example.com')
          end
        end

        describe 'termination' do
          it 'terminates when is_truncated is false' do
            data = Types::ListResourceRecordSetsResponse.new(
              is_truncated: false,
              next_record_name: 'should-be-ignored'
            )
            expect(paginator.next_tokens(data)).to eq({})
          end

          it 'terminates when tokens match prev_tokens (infinite-loop guard)' do
            data = Types::ListResourceRecordSetsResponse.new(
              is_truncated: true,
              next_record_name: 'example.com',
              next_record_type: 'A'
            )
            next_t = paginator.next_tokens(data)
            prev_t = paginator.prev_tokens(start_record_name: 'example.com', start_record_type: 'A')
            expect(next_t).to eq(prev_t)
          end
        end
      end
    end
  end
end
