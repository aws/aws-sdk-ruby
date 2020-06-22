# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe ProcessCredentials do

    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    it 'works with open3' do
      raw_out, process_status = Open3.capture2('echo "Hello"')
      puts "cap2: #{raw_out}"

      raw_out, process_status = Open3.capture2e('echo "Hello"')
      puts "cap2e: #{raw_out}"

      raw_out, process_status = Open3.capture2e('echo "Hello"', binmode: true)
      puts "cap2e, binmode: #{raw_out}"

      raw_out = `echo "Hello"`
      puts "backticks: #{raw_out}"

      Open3.popen3("echo abc") do |i, o, e, t|
        i.close
        puts "popen3: #{o.read} err: #{e.read}"
        puts "popen3 status: #{t.value}"
      end
          
      expect(raw_out).to eq("Hello\n")
    end

    it 'will read credentials from a process' do
      creds = ProcessCredentials.new('echo \'{"Version":1,"AccessKeyId":"AK_PROC1","SecretAccessKey":"SECRET_AK_PROC1","SessionToken":"TOKEN_PROC1"}\'').credentials
      expect(creds.access_key_id).to eq('AK_PROC1')
      expect(creds.secret_access_key).to eq('SECRET_AK_PROC1')
      expect(creds.session_token).to eq('TOKEN_PROC1')
    end

    it 'will throw an error when invalid JSON is returned' do
      expect {
        creds = ProcessCredentials.new('echo \'{"Version":3,"AccessKeyId":"","SecretAccessKey":"","SessionToken":""\'').credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error when the process credentials payload version is invalid' do 
      expect {
        creds = ProcessCredentials.new('echo \'{"Version":3,"AccessKeyId":"","SecretAccessKey":"","SessionToken":""}\'').credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error when the process credentials payload is malformed' do 
      expect {
        creds = ProcessCredentials.new('echo \'{"Version":1}\'').credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end

    it 'will throw an error and expose the stderr output when the credential process has a nonzero exit status' do
      expect {
        creds = ProcessCredentials.new('>&2 echo "Credential Provider Error"; false').credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
      .and output("Credential Provider Error\n").to_stderr_from_any_process
    end

    it 'will throw an error when the credential process cant be found' do
      expect {
        creds = ProcessCredentials.new('fake_proc').credentials
      }.to raise_error(Errors::InvalidProcessCredentialsPayload)
    end
  end
end
