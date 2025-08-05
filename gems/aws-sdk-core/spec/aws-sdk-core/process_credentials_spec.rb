# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ProcessCredentials do
      it 'reads credentials from a process' do
        credentials_hash = {
          Version: 1,
          AccessKeyId: 'ACCESS_KEY_1',
          SecretAccessKey: 'SECRET_KEY_1',
          SessionToken: 'TOKEN_1',
          Expiration: Time.parse('2025-06-11').utc.iso8601
        }
        process = %W[echo #{credentials_hash.to_json}]
        provider = ProcessCredentials.new(process)
        creds = provider.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(Time.parse('2025-06-11').utc)
      end

      it_behaves_like 'a refreshing credentials provider' do
        let(:resp) do
          {
            'Version' => 1,
            'AccessKeyId' => 'akid-1',
            'SecretAccessKey' => 'secret-1',
            'SessionToken' => 'session-token-1',
            'Expiration' => expiration.utc.iso8601
          }
        end

        let(:resp2) do
          {
            'Version' => 1,
            'AccessKeyId' => 'akid-2',
            'SecretAccessKey' => 'secret-2',
            'SessionToken' => 'session-token-2',
            'Expiration' => expiration2.utc.iso8601
          }
        end

        let(:provider) { ProcessCredentials.new(['echo']) }

        before(:each) do
          expect(JSON).to receive(:parse).and_return(resp, resp2)
        end
      end

      it 'raises an error when process has nonzero exit status' do
        process = %w[fake process]
        provider = ProcessCredentials.new(process)
        expect { provider.identity }
          .to raise_error(/non zero exit status/)
      end

      it 'raises an error when process returns invalid JSON' do
        process = %w[echo 'invalid json']
        provider = ProcessCredentials.new(process)
        expect { provider.identity }
          .to raise_error(/Malformed JSON payload/)
      end

      it 'raises an error when credentials values are missing' do
        credentials_hash = {
          Version: 1,
          SessionToken: ''
        }
        process = %W[echo #{credentials_hash.to_json}]
        provider = ProcessCredentials.new(process)
        expect { provider.identity }
          .to raise_error(/Invalid JSON payload for credentials/)
      end

      it 'raises an error when payload version is invalid' do
        credentials_hash = {
          Version: 2,
          AccessKeyId: 'ACCESS_KEY_1',
          SecretAccessKey: 'SECRET_KEY_1',
          SessionToken: 'TOKEN_1',
          Expiration: Time.parse('2025-06-11').utc.iso8601
        }
        process = %W[echo #{credentials_hash.to_json}]
        provider = ProcessCredentials.new(process)
        expect { provider.identity }
          .to raise_error(/Invalid version 2/)
      end

      it 'warns when a string process is used' do
        process = 'fake process'
        expect_any_instance_of(ProcessCredentials).to receive(:warn).with(/please use use an array of system arguments/)
        ProcessCredentials.new(process)
      end
    end
  end
end
