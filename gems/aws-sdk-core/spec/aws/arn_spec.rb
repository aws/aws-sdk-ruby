# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe ARN do
    it 'formats ARN string properly' do
      arn = ARN.new(
        partition: 'aws',
        service: 's3',
        region: 'us-west-2',
        account_id: '123456789012',
        resource: 'foo:bar'
      )
      expect(arn.to_s).to eq('arn:aws:s3:us-west-2:123456789012:foo:bar')
    end

    it 'provides access to the :partition' do
      arn = ARN.new(partition: 'aws')
      expect(arn.partition).to eq('aws')
    end

    it 'provides access to the :service' do
      arn = ARN.new(service: 's3')
      expect(arn.service).to eq('s3')
    end

    it 'provides access to the :region' do
      arn = ARN.new(region: 'us-west-2')
      expect(arn.region).to eq('us-west-2')
    end

    it 'provides access to the :account_id' do
      arn = ARN.new(account_id: '123456789012')
      expect(arn.account_id).to eq('123456789012')
    end

    it 'provides access to the :resource' do
      arn = ARN.new(resource: 'endpoint:foo')
      expect(arn.resource).to eq('endpoint:foo')
    end

    describe '#valid?' do
      it 'returns true when all attributes are all non-empty' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(true)
      end

      it 'returns false when the partition is nil' do
        arn = ARN.new(
          service: 's3',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(false)
      end

      it 'returns false when the partition is empty' do
        arn = ARN.new(
          partition: '',
          service: 's3',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(false)
      end

      it 'returns false when the service is nil' do
        arn = ARN.new(
          partition: 'aws',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(false)
      end

      it 'returns false when the service is empty' do
        arn = ARN.new(
          partition: 'aws',
          service: '',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(false)
      end

      it 'returns true when the region is nil' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(true)
      end

      it 'returns true when the region is empty' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: '',
          account_id: '123456789012',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(true)
      end

      it 'returns true when the account_id is nil' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: 'us-west-2',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(true)
      end

      it 'returns true when the account_id is empty' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: 'us-west-2',
          account_id: '',
          resource: 'foo:bar'
        )
        expect(arn.valid?).to be(true)
      end

      it 'returns false when the resource is nil' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: 'us-west-2',
          account_id: '123456789012'
        )
        expect(arn.valid?).to be(false)
      end

      it 'returns false when the resource is empty' do
        arn = ARN.new(
          partition: 'aws',
          service: 's3',
          region: 'us-west-2',
          account_id: '123456789012',
          resource: ''
        )
        expect(arn.valid?).to be(false)
      end
    end
  end
end
