# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe AssumeRoleWebIdentityCredentialsProvider do
      let(:client) { STS::Client.new(stub_responses: true) }
      let(:expiration) { Time.now.utc + (60 * 60) }

      let(:credentials) do
        {
          access_key_id: 'akid',
          secret_access_key: 'secret',
          session_token: 'session',
          expiration: expiration
        }
      end

      let(:assumed_role_user) do
        {
          arn: 'arn:aws:sts::123456789001:assumed-role/assume-role-test/Name',
          assumed_role_id: 'role id'
        }
      end

      let(:token_file) { Tempfile.new('token.jwt') }
      let(:token_file_path) { token_file.path }
      let(:uuid) { '2d931510-d99f-494a-8c67-87feb05e1594' }

      let(:generate_name) { Base64.strict_encode64(uuid) }

      let(:resp) do
        {
          credentials: credentials,
          assumed_role_user: assumed_role_user
        }
      end

      before(:each) do
        allow(STS::Client).to receive(:new).and_return(client)
        allow(SecureRandom).to receive(:uuid).and_return(uuid)
        client.stub_responses(:assume_role_with_web_identity, resp)
      end

      it 'raises if aws-sdk-sts is not required' do
        hide_const('Aws::STS')
        expect do
          AssumeRoleWebIdentityCredentialsProvider.new(
            role_arn: 'arn',
            web_identity_token_file: token_file_path,
            role_session_name: 'session-name'
          )
        end.to raise_error(/aws-sdk-sts gem must be required/)
      end

      it 'constructs a default client when not given' do
        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path,
          role_session_name: 'session-name'
        )
        expect(provider.client).to be(client)
      end

      it 'excludes before_refresh from client construction' do
        expect(STS::Client).to receive(:new).with({ credentials_provider: nil }).and_return(client)
        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path,
          role_session_name: 'session-name',
          before_refresh: proc {}
        )
        expect(provider.client).to be(client)
      end

      it 'auto populates :session_name when not provided' do
        expect(client).to receive(:assume_role_with_web_identity).with(
          {
            role_arn: 'arn',
            web_identity_token: '',
            role_session_name: generate_name
          }
        ).and_call_original
        AssumeRoleWebIdentityCredentialsProvider.new(role_arn: 'arn', web_identity_token_file: token_file_path)
      end

      it 'populates :web_identity_token from file when valid' do
        expect do
          AssumeRoleWebIdentityCredentialsProvider.new(role_arn: 'arn')
        end.to raise_error(AssumeRoleWebIdentityCredentialsProvider::MissingWebIdentityTokenFile)
        expect do
          AssumeRoleWebIdentityCredentialsProvider.new(role_arn: 'arn', web_identity_token_file: '/not/exist/file/foo')
        end.to raise_error(AssumeRoleWebIdentityCredentialsProvider::MissingWebIdentityTokenFile)

        token_file.write('token')
        token_file.flush
        token_file.close

        expect(client).to receive(:assume_role_with_web_identity).with(
          {
            role_arn: 'arn',
            web_identity_token: 'token',
            role_session_name: 'session-name'
          }
        ).and_call_original
        AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path,
          role_session_name: 'session-name'
        )
      end

      it 'accepts a client' do
        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          client: client,
          role_arn: 'arn',
          web_identity_token_file: token_file_path
        )
        expect(provider.client).to be(client)
      end

      it 'assumes role with web identity using the client' do
        expect(client).to receive(:assume_role_with_web_identity).with(
          {
            role_arn: 'arn',
            web_identity_token: '',
            role_session_name: 'session-name',
            provider_id: 'urlType',
            policy: 'sessionPolicyDocumentType'
          }
        ).and_call_original
        AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path,
          role_session_name: 'session-name',
          provider_id: 'urlType',
          policy: 'sessionPolicyDocumentType'
        )
      end

      it 'extracts credentials from response' do
        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path
        )
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session')
        expect(provider.expiration.to_s).to eq(expiration.to_s)
      end

      it 'calls before_refresh with self' do
        before_refresh_called = false
        before_refresh = proc do |provider|
          before_refresh_called = true
          expect(provider).to be_instance_of(AssumeRoleWebIdentityCredentialsProvider)
        end
        AssumeRoleWebIdentityCredentialsProvider.new(
          role_arn: 'arn',
          web_identity_token_file: token_file_path,
          before_refresh: before_refresh
        )
        expect(before_refresh_called).to be(true)
      end

      context 'retries' do
        let(:arwid_params) do
          {
            role_arn: 'arn',
            web_identity_token_file: token_file_path,
            backoff: 0
          }
        end

        it 'retries up to 3 times' do
          client.stub_responses(:assume_role_with_web_identity, 'IDPCommunicationErrorException')
          expect(client).to receive(:assume_role_with_web_identity).exactly(4).times.and_call_original
          expect do
            AssumeRoleWebIdentityCredentialsProvider.new(arwid_params)
          end.to raise_error(STS::Errors::IDPCommunicationErrorException)
        end

        it 'retries with exponential backoff' do
          arwid_params.delete(:backoff)
          client.stub_responses(:assume_role_with_web_identity, 'IDPCommunicationErrorException')
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(1.2)
          expect(Kernel).to receive(:sleep).with(1.44)
          expect do
            AssumeRoleWebIdentityCredentialsProvider.new(arwid_params)
          end.to raise_error(STS::Errors::IDPCommunicationErrorException)
        end

        it 'retries ExpiredTokenException and reloads the token from disk' do
          client.stub_responses(
            :assume_role_with_web_identity,
            ['ExpiredTokenException', 'ExpiredTokenException', resp]
          )
          expect_any_instance_of(AssumeRoleWebIdentityCredentialsProvider).to receive(:token_from_file)
            .exactly(3).times.and_call_original
          provider = AssumeRoleWebIdentityCredentialsProvider.new(arwid_params)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session')
          expect(provider.expiration.to_s).to eq(expiration.to_s)
        end

        it 'retries IDPCommunicationErrorException and does not reload the token' do
          client.stub_responses(
            :assume_role_with_web_identity,
            ['IDPCommunicationErrorException', 'IDPCommunicationErrorException', resp]
          )
          expect_any_instance_of(AssumeRoleWebIdentityCredentialsProvider).to receive(:token_from_file)
            .exactly(1).times.and_call_original
          provider = AssumeRoleWebIdentityCredentialsProvider.new(arwid_params)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session')
          expect(provider.expiration.to_s).to eq(expiration.to_s)
        end

        it 'does not retry any other errors' do
          client.stub_responses(:assume_role_with_web_identity, 'InvalidIdentityTokenException')
          expect(client).to receive(:assume_role_with_web_identity).exactly(1).times.and_call_original
          expect do
            AssumeRoleWebIdentityCredentialsProvider.new(arwid_params)
          end.to raise_error(STS::Errors::InvalidIdentityTokenException)
        end
      end
    end
  end
end
