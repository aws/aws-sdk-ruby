require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      describe 'access_grants' do
        it 'is disabled by default' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.access_grants).to be false
        end
      end

      describe 'access_grants_credentials_provider' do
        it 'is configured to use the default provider by default' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.access_grants_credentials_provider)
            .to be_a(Aws::S3::AccessGrantsCredentialsProvider)
        end

        it 'can use a configured provider' do
          provider = Aws::S3::AccessGrantsCredentialsProvider.new
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            access_grants_credentials_provider: provider
          )
          expect(client.config.access_grants_credentials_provider)
            .to be(provider)
        end
      end

      it 'sets the s3_client as the client to get data access' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        provider = client.config.access_grants_credentials_provider
        expect(provider.s3_client).to eq(client)
      end

      let(:client) do
        Aws::S3::Client.new(
          stub_responses: true,
          access_grants: true,
          region: 'us-east-1'
        )
      end

      it 'is skipped for s3 express endpoints' do
        expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
          .not_to receive(:access_grants_credentials_for)
        client.head_object(bucket: 'bucket--use1-az2--x-s3', key: 'key')
      end

      it 'is skipped for non-bucket operations' do
        expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
          .not_to receive(:access_grants_credentials_for)
        client.list_buckets
      end

      it 'is skipped for non-permissioned operations' do
        expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
          .not_to receive(:access_grants_credentials_for)
        client.list_objects(bucket: 'bucket')
      end

      it 'is called for permissioned bucket operations' do
        expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
          .to receive(:access_grants_credentials_for)
          .with(bucket: 'bucket', key: 'key', permission: 'READ', prefix: nil)
        client.head_object(bucket: 'bucket', key: 'key')
      end
    end
  end
end
