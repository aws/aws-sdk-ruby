# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe AssumeRoleCredentialsProvider do
      let(:client) { STS::Client.new(stub_responses: true) }

      let(:token_code) { nil }
      let(:provider_options) do
        {
          role_arn: 'role_arn',
          role_session_name: 'role_session_name',
          duration_seconds: 123,
          external_id: 'external_id',
          serial_number: 'serial_number',
          token_code: token_code
        }
      end

      it 'raises if aws-sdk-sts is not required' do
        hide_const('Aws::STS')
        expect do
          AssumeRoleCredentialsProvider.new(provider_options)
        end.to raise_error(/aws-sdk-sts gem must be required/)
      end

      describe '#initialize' do
        it 'constructs a client if not provided' do
          options = provider_options
          expect(STS::Client).to receive(:new).and_return(client)
          provider = AssumeRoleCredentialsProvider.new(options)
          expect(provider.client).to be(client)
        end

        it 'uses a provided client' do
          options = provider_options.merge(client: client)
          expect(STS::Client).not_to receive(:new)
          provider = AssumeRoleCredentialsProvider.new(options)
          expect(provider.client).to be(client)
        end
      end

      describe '#identity' do
        let(:expiration) { Time.now }

        before do
          client.stub_responses(
            :assume_role,
            credentials: {
              access_key_id: 'ACCESS_KEY_1',
              secret_access_key: 'SECRET_KEY_1',
              session_token: 'TOKEN_1',
              expiration: expiration
            }
          )
        end

        it 'calls assume_role with the provided parameters and sets the credentials' do
          provider = AssumeRoleCredentialsProvider.new(provider_options.merge(client: client))
          creds = provider.identity
          expect(creds.access_key_id).to eq('ACCESS_KEY_1')
          expect(creds.secret_access_key).to eq('SECRET_KEY_1')
          expect(creds.session_token).to eq('TOKEN_1')
          expect(provider.expiration.to_s).to eq(expiration.to_s)
        end

        context 'token_code is a string' do
          let(:token_code) { 'token_code' }

          it 'calls assume_role with the provided token_code' do
            expect(client).to receive(:assume_role).with(hash_including(token_code: token_code)).and_call_original
            AssumeRoleCredentialsProvider.new(provider_options.merge(client: client))
          end
        end

        context 'token_code is callable' do
          let(:token_code) do
            proc { 'dynamic_token_code' }
          end

          it 'calls token_code and then calls assume_role with the result' do
            expect(client).to receive(:assume_role).with(hash_including(token_code: token_code.call)).and_call_original
            AssumeRoleCredentialsProvider.new(provider_options.merge(client: client))
          end
        end
      end
    end
  end
end
