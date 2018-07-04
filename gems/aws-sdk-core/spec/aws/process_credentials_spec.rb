require_relative '../spec_helper'

module Aws
  describe ProcessCredentials do

    before(:each) do
      stub_const('ENV', {})
      Aws.shared_config.fresh(
        config_enabled: true,
        config_path: mock_config_file,
      )
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_config_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_config'))
    }

    it 'will read credentials from a process' do 
      creds = ProcessCredentials.new(
        profile_name: 'creds_from_process_valid').credentials
      expect(creds.access_key_id).to eq('AK_PROC1')
      expect(creds.secret_access_key).to eq('SECRET_AK_PROC1')
      expect(creds.session_token).to eq('TOKEN_PROC1')
    end

    it 'will throw an error when the process credentials payload version is invalid' do 
      expect {
        creds = ProcessCredentials.new(
          profile_name: 'creds_from_process_invalid_version').credentials
      }.to raise_error(ArgumentError)
    end

    it 'will throw an error when the process credentials payload is malformed' do 
      expect {
        creds = ProcessCredentials.new(
          profile_name: 'creds_from_process_invalid_format').credentials
      }.to raise_error(ArgumentError)
    end

    it 'will throw an error and expose the stderr output when the credential process has a nonzero exit status' do
      expect {
        creds = ProcessCredentials.new(
          profile_name: 'creds_from_process_invalid_exit').credentials
      }.to raise_error(SystemExit)
      .and output("Credential Provider Error\ncredential_process provider failure, the credential process had non zero exit status\n").to_stderr_from_any_process
    end

    it 'will throw an error when the credential process cant be found' do
      expect {
        creds = ProcessCredentials.new(
          profile_name: 'creds_from_process_invalid_process').credentials
      }.to raise_error(Errno::ENOENT)
    end
  end
end
