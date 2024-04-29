# frozen_string_literal: true

$:.unshift(File.expand_path('../../../aws-sdk-s3control/lib', __FILE__))
require_relative 'spec_helper'

module Aws
  module S3
    describe AccessGrantsCredentialsProvider do
      let(:s3_client) { Aws::S3::Client.new(stub_responses: true) }
      let(:sts_client) { Aws::STS::Client.new(stub_responses: true) }
      let(:s3_control_client) { Aws::S3Control::Client.new(stub_responses: true) }

      let(:bucket) { 'bucket' }
      let(:key) { 'key' }
      let(:prefix) { 'prefix' }
      let(:permission) { 'READ' }
      let(:matched_grant_target) { 's3://bucket/key/*' }

      let(:access_grants_credentials) do
        double(
          'access_grants_credentials',
          credentials: Aws::Credentials.new(
            'access-grants-akid',
            'access-grants-secret',
            'access-grants-token'
          ),
          matched_grant_target: matched_grant_target,
          expiration: Time.now + 3600
        )
      end

      subject do
        AccessGrantsCredentialsProvider.new(
          s3_client: s3_client,
          sts_client: sts_client,
          bucket: bucket,
          key: key,
          permission: permission
        )
      end

      before do
        allow(Aws::S3Control::Client).to receive(:new).and_return(s3_control_client)
      end

      after do
        Aws::S3.access_grants_credentials_cache.clear
        Aws::S3.access_grants_account_id_cache.clear
        BUCKET_REGIONS.clear
      end

      describe '#access_grants_credentials_for' do
        before do
          s3_client.stub_responses(:head_bucket, bucket_region: 'us-west-2')
          sts_client.stub_responses(:get_caller_identity, account: '123456789012')
          s3_control_client.stub_responses(
            :get_access_grants_instance_for_prefix,
            access_grants_instance_arn: 'arn:aws:s3:us-west-2:120987654321:access-grants'
          )
        end

        it 'returns credentials' do
          expect(AccessGrantsCredentials).to receive(:new).with(
            target: 's3://bucket/key',
            account_id: '120987654321',
            permission: 'READ',
            client: s3_control_client
          ).and_return(access_grants_credentials)

          creds = subject.access_grants_credentials_for(
            bucket: bucket,
            key: key,
            permission: permission
          ).credentials
          expect(creds.access_key_id).to eq('access-grants-akid')
          expect(creds.secret_access_key).to eq('access-grants-secret')
          expect(creds.session_token).to eq('access-grants-token')
        end

        it 'raises when access denied' do
          expect(AccessGrantsCredentials).to receive(:new).with(
            target: 's3://bucket/key',
            account_id: '120987654321',
            permission: 'READ',
            client: s3_control_client
          ).and_raise(Aws::S3Control::Errors::AccessDenied.new(nil, 'AccessDenied'))

          expect do
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: key,
              permission: permission
            )
          end.to raise_error(Aws::S3Control::Errors::AccessDenied)
        end

        it 'caches credentials' do
          expect(AccessGrantsCredentials).to receive(:new).with(
            target: 's3://bucket/key',
            account_id: '120987654321',
            permission: 'READ',
            client: s3_control_client
          ).and_return(access_grants_credentials)
          expect(s3_client).to receive(:head_bucket).once.and_call_original
          expect(sts_client).to receive(:get_caller_identity)
            .once.and_call_original
          expect(s3_control_client)
            .to receive(:get_access_grants_instance_for_prefix)
            .once.and_call_original

          creds = subject.access_grants_credentials_for(
            bucket: bucket,
            key: key,
            permission: permission
          )
          expect(creds).to eq(
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: key,
              permission: permission
            )
          )
        end

        context 'fallback enabled' do
          subject do
            AccessGrantsCredentialsProvider.new(
              s3_client: s3_client,
              sts_client: sts_client,
              bucket: bucket,
              key: key,
              permission: permission,
              fallback: true
            )
          end

          it 'falls back to original s3 credentials' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/key',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).and_raise(Aws::S3Control::Errors::AccessDenied.new(nil, 'AccessDenied'))
            expect_any_instance_of(AccessGrantsCredentialsProvider)
              .to receive(:warn).with(/Access Grants/)

            creds = subject.access_grants_credentials_for(
              bucket: bucket,
              key: key,
              permission: permission
            )
            expect(creds).to eq(s3_client.config.credentials)
          end
        end

        context 'broad cache search' do
          let(:matched_grant_target) { 's3://bucket/folder/*' }

          it 'searches prefix' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/folder/key',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).and_return(access_grants_credentials)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/key',
              permission: permission
            )
            expect(AccessGrantsCredentials).not_to receive(:new)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder',
              permission: permission
            )
          end

          it 'searches prefix with READWRITE permission' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/folder/key',
              account_id: '120987654321',
              permission: 'READWRITE',
              client: s3_control_client
            ).and_return(access_grants_credentials)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/key',
              permission: 'READWRITE'
            )
            expect(AccessGrantsCredentials).not_to receive(:new)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder',
              permission: permission
            )
          end

          it 'searches characters' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/folder/key',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).and_return(access_grants_credentials)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/key',
              permission: permission
            )
            expect(AccessGrantsCredentials).not_to receive(:new)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/k',
              permission: permission
            )
          end

          it 'searches characters with READWRITE permission' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/folder/key',
              account_id: '120987654321',
              permission: 'READWRITE',
              client: s3_control_client
            ).and_return(access_grants_credentials)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/key',
              permission: 'READWRITE'
            )
            expect(AccessGrantsCredentials).not_to receive(:new)
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: 'folder/k',
              permission: permission
            )
          end
        end

        context 'caching disabled' do
          subject do
            AccessGrantsCredentialsProvider.new(
              s3_client: s3_client,
              sts_client: sts_client,
              bucket: bucket,
              key: key,
              permission: permission,
              caching: false
            )
          end

          it 'does not cache credentials' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/key',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).twice.and_return(access_grants_credentials)
            expect(s3_client).to receive(:head_bucket).once.and_call_original
            expect(sts_client).to receive(:get_caller_identity)
              .twice.and_call_original
            expect(s3_control_client)
              .to receive(:get_access_grants_instance_for_prefix)
              .twice.and_call_original

            subject.access_grants_credentials_for(
              bucket: bucket,
              key: key,
              permission: permission
            )
            subject.access_grants_credentials_for(
              bucket: bucket,
              key: key,
              permission: permission
            )
          end
        end

        context 'prefix' do
          subject do
            AccessGrantsCredentialsProvider.new(
              s3_client: s3_client,
              sts_client: sts_client,
              bucket: bucket,
              prefix: prefix,
              permission: permission
            )
          end

          it 'returns credentials' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/prefix',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).and_return(access_grants_credentials)

            creds = subject.access_grants_credentials_for(
              bucket: bucket,
              prefix: prefix,
              permission: permission
            ).credentials
            expect(creds.access_key_id).to eq('access-grants-akid')
            expect(creds.secret_access_key).to eq('access-grants-secret')
            expect(creds.session_token).to eq('access-grants-token')
          end
        end

        context 'no key or prefix' do
          subject do
            AccessGrantsCredentialsProvider.new(
              s3_client: s3_client,
              sts_client: sts_client,
              bucket: bucket,
              permission: permission
            )
          end

          it 'returns credentials' do
            expect(AccessGrantsCredentials).to receive(:new).with(
              target: 's3://bucket/*',
              account_id: '120987654321',
              permission: 'READ',
              client: s3_control_client
            ).and_return(access_grants_credentials)

            creds = subject.access_grants_credentials_for(
              bucket: bucket,
              permission: permission
            ).credentials
            expect(creds.access_key_id).to eq('access-grants-akid')
            expect(creds.secret_access_key).to eq('access-grants-secret')
            expect(creds.session_token).to eq('access-grants-token')
          end
        end
      end

      describe '#s3_client' do
        it 'can assign and return the s3_client' do
          expect(subject.s3_client).to eq(s3_client)
          new_client = double('client')
          subject.s3_client = new_client
          expect(subject.s3_client).to eq(new_client)
        end
      end
    end
  end
end
