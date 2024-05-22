# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module EC2
    describe Resource do

      let(:client) { Client.new(stub_responses: true) }

      let(:ec2) { Resource.new(client: client) }

      describe '#images' do

        it 'sets max_results parameter when options without image_ids' do
          expect(ec2.client).to receive(:describe_images).with(
            {
              filters: [
                {
                  name: 'image-type',
                  values: ['machine'],
                },
              ],
              max_results: 1000,
            }
          ).and_call_original

          ec2.images(
            filters: [
              {
                name: 'image-type',
                values: ['machine'],
              },
            ],
          ).to_a
        end

        it 'does not set max_results parameter when options with image_ids' do
          expect(ec2.client).to receive(:describe_images).with(
            {
              filters: [
                {
                  name: 'image-type',
                  values: ['machine'],
                },
              ],
              image_ids: ['ami-12345678', 'ami-87654321'],
            }
          ).and_call_original

          ec2.images(
            filters: [
              {
                name: 'image-type',
                values: ['machine'],
              },
            ],
            image_ids: ['ami-12345678', 'ami-87654321'],
          ).to_a
        end

      end

      describe '#instances' do

        it 'sets max_results parameter when options without instance_ids' do
          expect(ec2.client).to receive(:describe_instances).with(
            {
              filters: [
                {
                  name: 'image-id',
                  values: ['ami-12345678', 'ami-87654321'],
                },
              ],
              max_results: 1000,
            }
          ).and_call_original

          ec2.instances(
            filters: [
              {
                name: 'image-id',
                values: ['ami-12345678', 'ami-87654321'],
              },
            ],
          ).to_a
        end

        it 'does not set max_results parameter when options with instance_ids' do
          expect(ec2.client).to receive(:describe_instances).with(
            {
              filters: [
                {
                  name: 'image-id',
                  values: ['ami-12345678', 'ami-87654321'],
                },
              ],
              instance_ids: ['ami-12345678', 'ami-87654321'],
            }
          ).and_call_original

          ec2.instances(
            filters: [
              {
                name: 'image-id',
                values: ['ami-12345678', 'ami-87654321'],
              },
            ],
            instance_ids: ['ami-12345678', 'ami-87654321'],
          ).to_a
        end

      end

      describe '#snapshots' do

        it 'sets max_results parameter when options without snapshot_ids' do
          expect(ec2.client).to receive(:describe_snapshots).with(
            {
              owner_ids: ['self'],
              max_results: 1000,
            }
          ).and_call_original

          ec2.snapshots(
            owner_ids: ['self'],
          ).to_a
        end

        it 'does not set max_results parameter when options with snapshot_ids' do
          expect(ec2.client).to receive(:describe_snapshots).with(
            {
              snapshot_ids: [
                'snap-12345678',
                'snap-87654321',
              ],
            }
          ).and_call_original

          ec2.snapshots(
            snapshot_ids: [
              'snap-12345678',
              'snap-87654321',
            ],
          ).to_a
        end

      end

      describe '#volumes' do

        it 'sets max_results parameter when options without volume_ids' do
          expect(ec2.client).to receive(:describe_volumes).with(
            {
              filters: [
                {
                  name: 'snapshot-id',
                  values: ['snap-12345678'],
                },
              ],
              max_results: 1000,
            }
          ).and_call_original

          ec2.volumes(
            filters: [
              {
                name: 'snapshot-id',
                values: ['snap-12345678'],
              },
            ],
          ).to_a
        end

        it 'does not set max_results parameter when options with volume_ids' do
          expect(ec2.client).to receive(:describe_volumes).with(
            {
              volume_ids: [
                'snap-12345678',
                'snap-87654321',
              ],
            }
          ).and_call_original

          ec2.volumes(
            volume_ids: [
              'snap-12345678',
              'snap-87654321',
            ],
          ).to_a
        end

      end

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
