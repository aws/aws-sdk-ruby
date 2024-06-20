# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe ProcessCredentials do

    before do
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    it 'will read credentials from a process' do
      process = %w[echo {"Version":1,"AccessKeyId":"AK_PROC1","SecretAccessKey":"SECRET_AK_PROC1","SessionToken":"TOKEN_PROC1"}]
      creds = ProcessCredentials.new(process).credentials
      expect(creds.access_key_id).to eq('AK_PROC1')
      expect(creds.secret_access_key).to eq('SECRET_AK_PROC1')
      expect(creds.session_token).to eq('TOKEN_PROC1')
    end

    it 'will throw an error when invalid JSON is returned' do
      process = %w[echo {"Version":3,"AccessKeyId":"","SecretAccessKey":""\']
      expect {
        ProcessCredentials.new(process).credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error when the process credentials payload version is invalid' do
      process = %w[echo {"Version":3,"AccessKeyId":"","SecretAccessKey":""}]
      expect {
        ProcessCredentials.new(process).credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error when the process credentials payload is malformed' do
      process = %w[echo {"Version":1}]
      expect {
        ProcessCredentials.new(process).credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error when the credential process has a nonzero exit status' do
      process = ['fake_proc']
      expect {
        ProcessCredentials.new(process).credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    context 'legacy process string' do
      before do
        expect_any_instance_of(ProcessCredentials)
          .to receive(:warn).with(/array of system arguments/)
      end

      it 'will read credentials from a process' do
        process = 'echo \'{"Version":1,"AccessKeyId":"AK_PROC1","SecretAccessKey":"SECRET_AK_PROC1","SessionToken":"TOKEN_PROC1"}\''
        creds = ProcessCredentials.new(process).credentials
        expect(creds.access_key_id).to eq('AK_PROC1')
        expect(creds.secret_access_key).to eq('SECRET_AK_PROC1')
        expect(creds.session_token).to eq('TOKEN_PROC1')
      end

      it 'will throw an error when invalid JSON is returned' do
        process = 'echo \'{"Version":3,"AccessKeyId":"","SecretAccessKey":""\''
        expect {
          ProcessCredentials.new(process).credentials
        }.to raise_error(Errors::InvalidProcessCredentialsPayload)
      end

      it 'will throw an error when the process credentials payload version is invalid' do
        process = 'echo \'{"Version":3,"AccessKeyId":"","SecretAccessKey":""}\''
        expect {
          ProcessCredentials.new(process).credentials
        }.to raise_error(Errors::InvalidProcessCredentialsPayload)
      end

      it 'will throw an error when the process credentials payload is malformed' do
        process = 'echo \'{"Version":1}\''
        expect {
          ProcessCredentials.new(process).credentials
        }.to raise_error(Errors::InvalidProcessCredentialsPayload)
      end

      it 'will throw an error when the credential process has a nonzero exit status' do
        process = 'fake_proc'
        expect {
          ProcessCredentials.new(process).credentials
        }.to raise_error(Errors::InvalidProcessCredentialsPayload)
      end
    end
  end
end
