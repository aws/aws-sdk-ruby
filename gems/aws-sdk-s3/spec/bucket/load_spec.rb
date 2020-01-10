require_relative '../spec_helper'

module Aws
  module S3
    describe Bucket do
      describe '#load' do
        let(:client) { Client.new(stub_responses: true) }

        let(:bucket) { Bucket.new('aws-sdk', client: client) }

        it 'attempts to load the bucket via #list_buckets' do
          now = Time.now
          client.stub_responses(
            :list_buckets,
            buckets: [
              { name: 'aws-sdk', creation_date: now }
            ]
          )
          bucket.load
          expect(bucket.creation_date.to_i).to eq(now.to_i)
        end

        it 'returns self' do
          now = Time.now
          client.stub_responses(
            :list_buckets,
            buckets: [
              { name: 'aws-sdk', creation_date: now }
            ]
          )
          expect(bucket.load).to be(bucket)
          expect(bucket.data_loaded?).to be(true)
        end

        it 'raises an error if a bucket is not found' do
          client.stub_responses(
            :list_buckets,
            buckets: [
              { name: 'other-bucket', creation_date: Time.now }
            ]
          )
          expect do
            bucket.load
          end.to raise_error('unable to load bucket aws-sdk')
        end
      end
    end
  end
end
