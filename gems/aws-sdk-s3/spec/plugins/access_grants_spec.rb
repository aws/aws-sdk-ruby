require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      before do
        allow(Aws::S3::Plugins::AccessGrants)
          .to receive(:s3control?).and_return(true)
      end

      describe 'access_grants' do
        it 'is disabled by default' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.access_grants).to be false
        end

        it 'does not set the s3_client if disabled' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          provider = client.config.access_grants_credentials_provider
          expect(provider.s3_client).to be_nil
        end

        it 'sets the s3_client as the client for get_data_access' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            access_grants: true,
            region: 'us-west-2'
          )
          provider = client.config.access_grants_credentials_provider
          expect(provider.s3_client).to eq(client)
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

      context 's3control not loaded' do
        before do
          allow(Aws::S3::Plugins::AccessGrants)
            .to receive(:s3control?).and_return(false)
        end

        it 'does not add the handler' do
          expect(client.handlers)
            .not_to include(Aws::S3::Plugins::AccessGrants::Handler)
        end

        it 'does not set the s3 client' do
          provider = client.config.access_grants_credentials_provider
          expect(provider.s3_client).to be_nil
        end
      end

      context 'delete_objects' do
        it 'key with no common ancestor' do
          keys = %w[A/log.txt B/log.txt C/log.txt]
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: '', permission: 'WRITE', prefix: nil)
          delete = { objects: keys.map { |key| { key: key } } }
          client.delete_objects(bucket: 'bucket', delete: delete)
        end

        it 'key with root common ancestor' do
          keys = %w[A/A/log.txt A/B/log.txt A/C/log.txt]
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: 'A/', permission: 'WRITE', prefix: nil)
          delete = { objects: keys.map { |key| { key: key } } }
          client.delete_objects(bucket: 'bucket', delete: delete)
        end

        it 'key with level next to root common ancestor' do
          keys = %w[A/path12/log.txt A/path34/B/log.txt A/path56/C/log.txt]
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: 'A/path', permission: 'WRITE', prefix: nil)
          delete = { objects: keys.map { |key| { key: key } } }
          client.delete_objects(bucket: 'bucket', delete: delete)
        end
      end

      context 'copy_source' do
        it 'key with no common ancestor' do
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: '', permission: 'READWRITE', prefix: nil)
          client.copy_object(bucket: 'bucket', key: 'A/log.txt', copy_source: 'bucket/B/log.txt')
        end

        it 'key with root common ancestor' do
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: 'A/', permission: 'READWRITE', prefix: nil)
          client.copy_object(bucket: 'bucket', key: 'A/A/log.txt', copy_source: 'bucket/A/B/log.txt')
        end

        it 'key with level next to root common ancestor' do
          expect_any_instance_of(Aws::S3::AccessGrantsCredentialsProvider)
            .to receive(:access_grants_credentials_for)
            .with(bucket: 'bucket', key: 'A/path', permission: 'READWRITE', prefix: nil)
          client.copy_object(bucket: 'bucket', key: 'A/path12/log.txt', copy_source: 'bucket/A/path34/log.txt')
        end
      end
    end
  end
end
