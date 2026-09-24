# frozen_string_literal: true

$:.unshift(File.expand_path('../../../aws-sdk-s3control/lib', __FILE__))
require_relative 'spec_helper'

module Aws
  module S3
    describe AccessGrantsCredentials do

      let(:client) do
        Aws::S3Control::Client.new(region: 'us-east-1', stub_responses: true)
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

      let(:matched_grant_target) { 's3://bucket/*' }

      let(:resp) do
        double('client-resp',
          credentials: credentials,
          matched_grant_target: matched_grant_target
        )
      end

      before(:each) do
        allow(client).to receive(:get_data_access).and_return(resp)
      end

      it 'gets data access using the client and options' do
        expect(client).to receive(:get_data_access).with({
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        }).and_return(resp)

        AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )
      end

      it 'extracts credentials from the data access response' do
        c = AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )

        expect(c).to be_set
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session')
        expect(c.expiration).to eq(in_five_minutes)
      end

      it 'provides the matched grant target' do
        c = AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )

        expect(c.matched_grant_target).to eq('s3://bucket/*')
      end

      it 'refreshes asynchronously' do
        # expiration 9.5 minutes out, within the async exp time window
        time = Time.now + 60 * 9.5
        allow(credentials).to receive(:expiration).and_return(time)
        expect(client).to receive(:get_data_access).at_least(2).times
        expect(Thread).to receive(:new).and_yield
        c = AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )
        c.credentials
      end

      it 'refreshes credentials automatically when they are near expiration' do
        allow(credentials).to receive(:expiration).and_return(Time.now)
        expect(client).to receive(:get_data_access).exactly(4).times
        c = AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )
        c.credentials
        c.credentials
        c.credentials
      end

      it 'expiration is a Time' do
        c = AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE'
        )
        expect(c.expiration).to be_a(Time)
      end

      it 'calls before_refresh with self' do
        before_refresh_called = false
        before_refresh = proc do |cred_provider|
          before_refresh_called = true
          expect(cred_provider).to be_instance_of(AccessGrantsCredentials)
        end

        AccessGrantsCredentials.new(
          client: client,
          account_id: '12345678910',
          target: 's3://bucket',
          permission: 'READWRITE',
          before_refresh: before_refresh
        )

        expect(before_refresh_called).to be(true)
      end
    end
  end
end

