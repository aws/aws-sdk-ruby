require 'spec_helper'

module Aws
  describe CredentialProviderChain do

    let(:env) {{}}

    let(:config) {
      double('config',
        access_key_id: nil,
        secret_access_key: nil,
        session_token: nil,
        profile: nil,
        instance_profile_credentials_timeout: 1,
        instance_profile_credentials_retries: 0,
      )
    }

    let(:chain) { CredentialProviderChain.new(config) }

    let(:credentials) { chain.resolve }

    before(:each) do
      stub_const('ENV', env)
    end

    it 'defaults to nil when credentials not set' do
      expect(credentials).to be(nil)
    end

    it 'hydrates credentials from config options' do
      allow(config).to receive(:access_key_id).and_return('akid')
      allow(config).to receive(:secret_access_key).and_return('secret')
      allow(config).to receive(:session_token).and_return('session')
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid')
      expect(credentials.secret_access_key).to eq('secret')
      expect(credentials.session_token).to eq('session')
    end

    it 'hydrates credentials from ENV with prefix AWS_' do
      env['AWS_ACCESS_KEY_ID'] = 'akid'
      env['AWS_SECRET_ACCESS_KEY'] = 'secret'
      env['AWS_SESSION_TOKEN'] = 'token'
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid')
      expect(credentials.secret_access_key).to eq('secret')
      expect(credentials.session_token).to eq('token')
    end

    it 'hydrates credentials from ENV with prefix AMAZON_' do
      env['AMAZON_ACCESS_KEY_ID'] = 'akid2'
      env['AMAZON_SECRET_ACCESS_KEY'] = 'secret2'
      env['AMAZON_SESSION_TOKEN'] = 'token2'
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid2')
      expect(credentials.secret_access_key).to eq('secret2')
      expect(credentials.session_token).to eq('token2')
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY & AWS_SECRET_KEY' do
      env['AWS_ACCESS_KEY'] = 'akid3'
      env['AWS_SECRET_KEY'] = 'secret3'
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid3')
      expect(credentials.secret_access_key).to eq('secret3')
      expect(credentials.session_token).to be(nil)
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY_ID & AWS_SECRET_KEY' do
      env['AWS_ACCESS_KEY_ID'] = 'akid4'
      env['AWS_SECRET_KEY'] = 'secret4'
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid4')
      expect(credentials.secret_access_key).to eq('secret4')
      expect(credentials.session_token).to be(nil)
    end

    it 'hydrates credentials from the shared credentials file' do
      mock_path = File.join(
        File.dirname(__FILE__), '..', 'fixtures', 'credentials',
        'mock_shared_credentials')
      path = File.join('HOME', '.aws', 'credentials')
      allow(Dir).to receive(:home).and_return('HOME')
      allow(File).to receive(:exist?).with(path).and_return(true)
      allow(File).to receive(:readable?).with(path).and_return(true)
      expect(File).to receive(:read).with(path).and_return(File.read(mock_path))
      expect(credentials).to be_kind_of(SharedCredentials)
      expect(credentials.set?).to be(true)
      expect(credentials.credentials.access_key_id).to eq('ACCESS_KEY_0')
      expect(credentials.credentials.secret_access_key).to eq('SECRET_KEY_0')
      expect(credentials.credentials.session_token).to eq('TOKEN_0')
    end


    it 'hydrates profile from ENV with AWS_PROFILE when available' do
      mock_path = File.join(
        File.dirname(__FILE__), '..', 'fixtures', 'credentials',
        'mock_shared_credentials')
      path = File.join('HOME', '.aws', 'credentials')
      allow(Dir).to receive(:home).and_return('HOME')
      allow(File).to receive(:exist?).with(path).and_return(true)
      allow(File).to receive(:readable?).with(path).and_return(true)
      allow(File).to receive(:read).with(path).and_return(File.read(mock_path))

      env['AWS_PROFILE'] = 'fooprofile'
      creds = CredentialProviderChain.new.resolve
      expect(creds.profile_name).to eq('fooprofile')
      expect(credentials.set?).to be(true)
      expect(credentials.credentials.access_key_id).to eq('ACCESS_KEY_1')
      expect(credentials.credentials.secret_access_key).to eq('SECRET_KEY_1')
      expect(credentials.credentials.session_token).to eq('TOKEN_1')
    end

    it 'hydrates credentials from the instance profile service' do
      path = '/latest/meta-data/iam/security-credentials/'
      resp = <<-JSON.strip
{
"Code" : "Success",
"LastUpdated" : "2013-11-22T20:03:48Z",
"Type" : "AWS-HMAC",
"AccessKeyId" : "akid",
"SecretAccessKey" : "secret",
"Token" : "token",
"Expiration" : "#{Time.now.strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
      JSON
      stub_request(:get, "http://169.254.169.254#{path}").
        to_return(:status => 200, :body => "profile-name\n")
      stub_request(:get, "http://169.254.169.254#{path}profile-name").
        to_return(:status => 200, :body => resp)
      expect(credentials).to be_kind_of(InstanceProfileCredentials)
      expect(credentials.set?).to be(true)
      expect(credentials.access_key_id).to eq('akid')
      expect(credentials.secret_access_key).to eq('secret')
      expect(credentials.session_token).to eq('token')
    end

    describe 'with config set to nil' do
      let(:config) { nil }

      it 'defaults to nil' do
        expect(credentials).to be(nil)
      end

    end
    describe 'with shared credentials' do

      let(:path) { File.join('HOME', '.aws', 'credentials') }

      before(:each) do
        allow(File).to receive(:exist?).with(path).and_return(true)
        allow(File).to receive(:readable?).with(path).and_return(true)
        allow(Dir).to receive(:home).and_return('HOME')
      end

      it 'returns no credentials when the shared file is empty' do
        expect(File).to receive(:read).with(path).and_return('')
        expect(chain.resolve).to be(nil)
      end

      it 'returns no credentials when the shared file profile is missing' do
        no_default = <<-CREDS.strip
[fooprofile]
aws_access_key_id = ACCESS_KEY_1
aws_secret_access_key = SECRET_KEY_1
aws_session_token = TOKEN_1
        CREDS
        expect(File).to receive(:read).with(path).and_return(no_default)
        expect(chain.resolve).to be(nil)
      end

    end

  end
end
