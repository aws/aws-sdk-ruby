# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module EC2
    describe Resource do

      let(:client) { Client.new(stub_responses: true) }

      let(:ec2) { Resource.new(client: client) }

      describe '#create_tags' do

        it 'returns a batch of created tags, the product of ids and tags' do
          tags = ec2.create_tags(
            resources: ["i-12345678", "i-87654321"],
            tags: [
              { key: 'k1', value: 'v1' },
              { key: 'k2', value: 'v2' },
            ]
          )
          expect(tags).to be_kind_of(Tag::Collection)
          expect(tags.size).to be(4)

          tags.each do |tag|
            expect(tag).to be_kind_of(Tag)
            expect(tag.client).to be(ec2.client)
          end

          tags = tags.to_a
          expect(tags[0].resource_id).to eq('i-12345678')
          expect(tags[0].key).to eq('k1')
          expect(tags[0].value).to eq('v1')
          expect(tags[1].resource_id).to eq('i-12345678')
          expect(tags[1].key).to eq('k2')
          expect(tags[1].value).to eq('v2')
          expect(tags[2].resource_id).to eq('i-87654321')
          expect(tags[2].key).to eq('k1')
          expect(tags[2].value).to eq('v1')
          expect(tags[3].resource_id).to eq('i-87654321')
          expect(tags[3].key).to eq('k2')
          expect(tags[3].value).to eq('v2')
        end

      end
    end
  end
end
