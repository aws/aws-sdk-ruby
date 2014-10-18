require 'spec_helper'

module Aws
  describe AssumeRoleCredentials do

    let(:client) {
      STS::Client.new(
        region: 'us-eas-1',
        credentials: credentials,
        stub_responses: true
      )
    }

    let(:in_one_hour) { Time.now + 60 * 60 }

    let(:expiration) { in_one_hour }

    let(:credentials) {
      double('credentials',
        access_key_id: 'akid',
        secret_access_key: 'secret',
        session_token: 'session',
        expiration: expiration,
      )
    }

    let(:resp) { double('client-resp', credentials: credentials) }

    before(:each) do
      allow(STS::Client).to receive(:new).and_return(client)
      allow(client).to receive(:assume_role).and_return(resp)
    end

    it 'constructs a default client when not given one' do
      creds = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session'
      )
      expect(creds.client).to be(client)
    end

    it 'accepts a client' do
      creds = AssumeRoleCredentials.new(
        client: client,
        role_arn: 'arn',
        role_session_name: 'session'
      )
      expect(creds.client).to be(client)
    end

    it 'assumes a role using the client' do
      expect(client).to receive(:assume_role).with(
        role_arn: 'arn',
        role_session_name: 'session',
        policy: 'policy',
        duration_seconds: 100,
        external_id: 'id'
      ).and_return(resp)
      creds = AssumeRoleCredentials.new(
        client: client,
        role_arn: 'arn',
        role_session_name: 'session',
        policy: 'policy',
        duration_seconds: 100,
        external_id: 'id')
    end

    it 'extracts credentials from the assume role response' do
      creds = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session')
      expect(creds).to be_set
      expect(creds.access_key_id).to eq('akid')
      expect(creds.secret_access_key).to eq('secret')
      expect(creds.session_token).to eq('session')
      expect(creds.expiration).to eq(in_one_hour)
    end

    it 'refreshes credentials automatically when they are near expiration' do
      allow(credentials).to receive(:expiration).and_return(Time.now)
      expect(client).to receive(:assume_role).exactly(4).times
      creds = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session')
      creds.access_key_id
      creds.access_key_id
      creds.access_key_id
    end

  end
end
