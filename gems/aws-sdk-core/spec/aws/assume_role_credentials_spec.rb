# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe AssumeRoleCredentials do

    let(:client) {
      STS::Client.new(
        region: 'us-east-1',
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

    it 'excludes before_refresh from client construction' do
      allow(STS::Client).to receive(:new).with({credentials: false}).and_return(client)
      creds = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session',
        before_refresh: proc {}
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

    it 'accepts client options' do
      client = STS::Client.new(stub_responses: true)
      expect(STS::Client).to receive(:new).
        with({region: 'region-name'}).
        and_return(client)
      creds = AssumeRoleCredentials.new(
        region: 'region-name',
        role_arn: 'arn',
        role_session_name: 'session'
      )
      expect(creds.client).to be(client)
    end

    it 'assumes a role using the client' do
      expect(client).to receive(:assume_role).with({
        role_arn: 'arn',
        role_session_name: 'session',
        policy: 'policy',
        duration_seconds: 100,
        external_id: 'id'
      }).and_return(resp)
      AssumeRoleCredentials.new(
        client: client,
        role_arn: 'arn',
        role_session_name: 'session',
        policy: 'policy',
        duration_seconds: 100,
        external_id: 'id')
    end

    it 'extracts credentials from the assume role response' do
      c = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session')
      expect(c).to be_set
      expect(c.credentials.access_key_id).to eq('akid')
      expect(c.credentials.secret_access_key).to eq('secret')
      expect(c.credentials.session_token).to eq('session')
      expect(c.expiration).to eq(in_one_hour)
    end

    it 'refreshes asynchronously' do
      # expiration 6 minutes out, within the async exp time window
      allow(credentials).to receive(:expiration).and_return(Time.now + (6*60))
      expect(client).to receive(:assume_role).at_least(2).times
      expect(Thread).to receive(:new).and_yield
      c = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session')
      c.credentials
    end

    it 'refreshes credentials automatically when they are near expiration' do
      allow(credentials).to receive(:expiration).and_return(Time.now)
      expect(client).to receive(:assume_role).exactly(4).times
      c = AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session')
      c.credentials
      c.credentials
      c.credentials
    end

    it 'calls before_refresh with self' do
      before_refresh_called = false
      before_refresh = proc do |cred_provider|
        before_refresh_called = true
        expect(cred_provider).to be_instance_of(AssumeRoleCredentials)
      end

      AssumeRoleCredentials.new(
        role_arn: 'arn',
        role_session_name: 'session',
        before_refresh: before_refresh
      )

      expect(before_refresh_called).to be(true)
    end

  end
end
