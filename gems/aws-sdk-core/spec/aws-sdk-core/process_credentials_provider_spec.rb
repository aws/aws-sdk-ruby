# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ProcessCredentialsProvider do
      let(:expiration) { Time.now.round + 3600 }
      let(:creds_json) do
        {
          Version: 1,
          AccessKeyId: 'AK_PROC',
          SecretAccessKey: 'SECRET_AK_PROC',
          SessionToken: 'TOKEN_PROC',
          AccountId: 'ACCOUNT_ID_PROC',
          Expiration: expiration.utc.iso8601
        }.to_json
      end

      it 'reads credentials from a process' do
        process = %W[echo #{creds_json}]
        provider = ProcessCredentialsProvider.new(process)
        creds = provider.identity
        expect(creds.access_key_id).to eq('AK_PROC')
        expect(creds.secret_access_key).to eq('SECRET_AK_PROC')
        expect(creds.session_token).to eq('TOKEN_PROC')
        expect(creds.account_id).to eq('ACCOUNT_ID_PROC')
        expect(provider.expiration).to eq(expiration)
      end

      it 'raises an error when process has nonzero exit status' do
        process = %w[fake process]
        expect { ProcessCredentialsProvider.new(process) }.to raise_error(/non zero exit status/)
      end

      it 'raises an error when process returns invalid JSON' do
        process = %w[echo 'invalid json']
        expect { ProcessCredentialsProvider.new(process) }.to raise_error(/Malformed JSON payload/)
      end

      it 'raises an error when credentials values are missing' do
        process = ['echo', '{ "Version": 1 }']
        expect { ProcessCredentialsProvider.new(process) }.to raise_error(/Invalid JSON payload for credentials/)
      end

      it 'raises an error when payload version is invalid' do
        process = ['echo', '{ "Version": 2, "AccessKeyId": "AK_PROC", "SecretAccessKey": "SECRET_AK_PROC" }']
        expect { ProcessCredentialsProvider.new(process) }.to raise_error(/Invalid version 2/)
      end
    end
  end
end
