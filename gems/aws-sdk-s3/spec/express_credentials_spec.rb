# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ExpressCredentials do

      let(:client) do
        S3::Client.new(region: 'us-east-1', stub_responses: true)
      end

      let(:in_five_minutes) { Time.now + 60 * 5 }

      let(:expiration) { in_five_minutes }

      let(:credentials) do
        double('credentials',
          access_key_id: 'akid',
          secret_access_key: 'secret',
          session_token: 'session',
          expiration: expiration,
        )
      end

      let(:resp) { double('client-resp', credentials: credentials) }

      before(:each) do
        allow(client).to receive(:create_session).and_return(resp)
      end

      it 'creates a session using the client and options' do
        expect(client).to receive(:create_session).with({
          bucket: 'bucket',
          session_mode: 'ReadWrite'
        }).and_return(resp)

        ExpressCredentials.new(
          client: client,
          bucket: 'bucket',
          session_mode: 'ReadWrite'
        )
      end

      it 'extracts credentials from the session response' do
        c = ExpressCredentials.new(
          client: client,
          bucket: 'bucket'
        )

        expect(c).to be_set
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session')
        expect(c.expiration).to eq(in_five_minutes)
      end

      it 'refreshes asynchronously' do
        # expiration 1.5 minutes out, within the async exp time window
        time = Time.now + 60 * 1.5
        allow(credentials).to receive(:expiration).and_return(time)
        expect(client).to receive(:create_session).at_least(2).times
        expect(Thread).to receive(:new).and_yield
        c = ExpressCredentials.new(
          client: client,
          bucket: 'bucket'
        )
        c.credentials
      end

      it 'refreshes credentials automatically when they are near expiration' do
        allow(credentials).to receive(:expiration).and_return(Time.now)
        expect(client).to receive(:create_session).exactly(4).times
        c = ExpressCredentials.new(
          client: client,
          bucket: 'bucket'
        )
        c.credentials
        c.credentials
        c.credentials
      end

      it 'expiration is a Time' do
        c = ExpressCredentials.new(
          client: client,
          bucket: 'bucket'
        )
        expect(c.expiration).to be_a(Time)
      end

      it 'calls before_refresh with self' do
        before_refresh_called = false
        before_refresh = proc do |cred_provider|
          before_refresh_called = true
          expect(cred_provider).to be_instance_of(ExpressCredentials)
        end

        ExpressCredentials.new(
          client: client,
          bucket: 'bucket',
          before_refresh: before_refresh
        )

        expect(before_refresh_called).to be(true)
      end
    end
  end
end

