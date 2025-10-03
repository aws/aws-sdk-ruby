# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ARN do
      describe '#initialize' do
        it 'sets attributes from constructor options' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('s3')
          expect(arn.region).to eq('us-west-2')
          expect(arn.account_id).to eq('12345678910')
          expect(arn.resource).to eq('foo/bar')
        end

        it 'handles nil values for optional components' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: nil,
            account_id: nil,
            resource: 'foo/bar'
          )
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('s3')
          expect(arn.region).to be_nil
          expect(arn.account_id).to be_nil
          expect(arn.resource).to eq('foo/bar')
        end

        it 'handles empty values for optional components' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: '',
            account_id: '',
            resource: 'foo/bar'
          )
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('s3')
          expect(arn.region).to eq('')
          expect(arn.account_id).to eq('')
          expect(arn.resource).to eq('foo/bar')
        end
      end

      describe '#valid?' do
        it 'returns true when partition, service, and resource are present' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: nil,
            account_id: nil,
            resource: 'foo/bar'
          )
          expect(arn.valid?).to be true
        end

        it 'returns false when partition is missing' do
          arn = ARN.new(
            partition: nil,
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.valid?).to be false
        end

        it 'returns false when partition is empty' do
          arn = ARN.new(
            partition: '',
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.valid?).to be false
        end

        it 'returns false when service is missing' do
          arn = ARN.new(
            partition: 'aws',
            service: nil,
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.valid?).to be false
        end

        it 'returns false when service is empty' do
          arn = ARN.new(
            partition: 'aws',
            service: '',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.valid?).to be false
        end

        it 'returns false when resource is missing' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: nil
          )
          expect(arn.valid?).to be false
        end

        it 'returns false when resource is empty' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: ''
          )
          expect(arn.valid?).to be false
        end
      end

      describe '#to_s' do
        it 'returns a properly formatted ARN string' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: 'us-west-2',
            account_id: '12345678910',
            resource: 'foo/bar'
          )
          expect(arn.to_s).to eq('arn:aws:s3:us-west-2:12345678910:foo/bar')
        end

        it 'includes nil or empty components in the ARN string' do
          arn = ARN.new(
            partition: 'aws',
            service: 's3',
            region: nil,
            account_id: '',
            resource: 'foo/bar'
          )
          expect(arn.to_s).to eq('arn:aws:s3:::foo/bar')
        end
      end
    end
  end
end
