# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe AssumeRoleWebIdentityCredentials do

    let(:client) do
      STS::Client.new(
        region: 'us-west-2',
        credentials: credentials,
        stub_responses: true
      )
    end

    let(:in_one_hour) { Time.now + 60 * 60 }

    let(:expiration) { in_one_hour }

    let(:credentials) do
      double(
        'credentials',
        access_key_id: 'akid',
        secret_access_key: 'secret',
        session_token: 'session',
        expiration: expiration
      )
    end

    let(:assumed_role_user) do
      double(
        'assumed_role_user',
        arn: 'arn:aws:sts::123456789001:assumed-role/assume-role-test/Name',
        assumed_role_id: 'role id'
      )
    end

    let(:token_file) { Tempfile.new('token.jwt') }
    let(:token_file_path) { token_file.path }
    let(:uuid) { '2d931510-d99f-494a-8c67-87feb05e1594' }

    let(:generate_name) { Base64.strict_encode64(uuid) }

    let(:resp) do
      double(
        'client-resp',
        credentials: credentials,
        assumed_role_user: assumed_role_user
      )
    end

    before(:each) do
      allow(STS::Client).to receive(:new).and_return(client)
      allow(SecureRandom).to receive(:uuid).and_return(uuid)
      allow(client).to receive(:assume_role_with_web_identity).and_return(resp)
    end

    it 'constructs a default client when not given' do
      creds = AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: "session-name"
      )
      expect(creds.client).to be(client)
    end

    it 'excludes before_refresh from client construction' do
      expect(STS::Client).to receive(:new).with({credentials: false}).and_return(client)

      creds = AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: "session-name",
        before_refresh: proc { }
      )
      expect(creds.client).to be(client)
    end

    it 'auto populates :session_name when not provided' do
      expect(client).to receive(:assume_role_with_web_identity).with({
        role_arn: 'arn',
        web_identity_token: '',
        role_session_name: generate_name
      })
      AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
      )
    end

    it 'populates :web_identity_token from file when valid' do
      expect {
        AssumeRoleWebIdentityCredentials.new(
          role_arn: 'arn')
      }.to raise_error(Aws::Errors::MissingWebIdentityTokenFile)
      expect {
        AssumeRoleWebIdentityCredentials.new(
          role_arn: 'arn',
          web_identity_token_file: '/not/exist/file/foo',
        )
      }.to raise_error(Aws::Errors::MissingWebIdentityTokenFile)

      token_file.write('token')
      token_file.flush
      token_file.close

      expect(client).to receive(:assume_role_with_web_identity).with({
        role_arn: 'arn',
        web_identity_token: 'token',
        role_session_name: "session-name"
      })
      AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: "session-name"
      )
    end

    it 'accepts a client' do
      creds = AssumeRoleWebIdentityCredentials.new(
        client: client,
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
      )
      expect(creds.client).to be(client)
    end

    it 'accepts client options' do
      expected_client = STS::Client.new(
        credentials: false, stub_responses: true)
      expect(STS::Client).to receive(:new).
        with({region: 'region-name', credentials: false}).
        and_return(expected_client)
      creds = AssumeRoleWebIdentityCredentials.new(
        region: 'region-name',
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
      )
      expect(creds.client).to be(expected_client)
    end

    it 'assumes role with web identity using the client' do
      expect(client).to receive(:assume_role_with_web_identity).with({
        role_arn: 'arn',
        web_identity_token: '',
        role_session_name: "session-name",
        provider_id: "urlType",
        policy: "sessionPolicyDocumentType"
      })
      AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: "session-name",
        provider_id: "urlType",
        policy: "sessionPolicyDocumentType"
      )
    end

    it 'extracts credentials from response' do
      c = AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
      )
      expect(c).to be_set
      expect(c.credentials.access_key_id).to eq('akid')
      expect(c.credentials.secret_access_key).to eq('secret')
      expect(c.credentials.session_token).to eq('session')
      expect(c.credentials.account_id).to eq('123456789001')
      expect(c.expiration).to eq(in_one_hour)
    end

    it 'refreshes asynchronously' do
      # expiration 6 minutes out, within the async exp time window
      allow(credentials).to receive(:expiration).and_return(Time.now + (6*60))
      expect(client).to receive(:assume_role_with_web_identity).exactly(2).times
      expect(File).to receive(:read).with(token_file_path).exactly(2).times
      expect(Thread).to receive(:new).and_yield

      c = AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: 'session')
      c.credentials
    end

    it 'auto refreshes credentials when near expiration' do
      allow(credentials).to receive(:expiration).and_return(Time.now)
      expect(client).to receive(:assume_role_with_web_identity).exactly(4).times
      expect(File).to receive(:read).with(token_file_path).exactly(4).times

      c = AssumeRoleWebIdentityCredentials.new(
        role_arn: 'arn',
        web_identity_token_file: token_file_path,
        role_session_name: 'session')
      c.credentials
      c.credentials
      c.credentials
    end
  end
end
