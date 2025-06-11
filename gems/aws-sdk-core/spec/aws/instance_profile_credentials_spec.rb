# frozen_string_literal: true

require_relative '../spec_helper'
require 'uri'

module Aws
  describe InstanceProfileCredentials do
    before do
      allow_any_instance_of(InstanceProfileCredentials).to receive(:warn)
    end

    let(:token_path) { '/latest/api/token' }
    let(:legacy_path) { '/latest/meta-data/iam/security-credentials/' }
    let(:extended_path) { '/latest/meta-data/iam/security-credentials-extended/' }

    let(:endpoint) { 'http://123.123.123.123' }
    let(:ipv4_endpoint) { 'http://169.254.169.254' }
    let(:ipv6_endpoint) { 'http://[fd00:ec2::254]' }

    let(:token_value) { 'my-token' }
    let(:profile_name) { 'profile-name' }

    describe '#initalize' do
      let(:subject) { InstanceProfileCredentials.new(backoff: 0) }

      it 'constructs an EC2Metadata client if not provided' do
        imds_client = double('EC2Metadata', get: nil)
        expect(EC2Metadata).to receive(:new).and_return(imds_client)
        expect(subject.instance_variable_get(:@client)).to be(imds_client)
      end

      it 'constructs an EC2Metadata client with provided configurations' do
        subject = InstanceProfileCredentials.new(retries: 2, backoff: 0)
        expect(
          subject.instance_variable_get(:@client)
        ).to be_an_instance_of(EC2Metadata)
        expect(subject.retries).to be(2)
      end

      it 'sets EC2Metadata client when provided' do
        imds_client = EC2Metadata.new(backoff: 0)
        subject = InstanceProfileCredentials.new(client: imds_client)
        expect(subject.instance_variable_get(:@client)).to be(imds_client)
      end

      it 'honors the :delay configuration as :backoff when set' do
        dummy_proc = proc { 1 }
        subject = InstanceProfileCredentials.new(delay: dummy_proc)
        imds_client = subject.instance_variable_get(:@client)
        expect(imds_client.instance_variable_get(:@backoff)).to be(dummy_proc)
      end

      context 'profile name resolution' do
        it 'uses the given profile name' do
          subject = InstanceProfileCredentials.new(
            ec2_instance_profile_name: 'foo',
            backoff: 0
          )
          expect(
            subject.instance_variable_get(:@ec2_instance_profile_name)
          ).to eq('foo')
        end

        it 'uses the profile name from environment variable' do
          ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] = 'bar'
          expect(
            subject.instance_variable_get(:@ec2_instance_profile_name)
          ).to eq('bar')
        end

        it 'uses the profile name from shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:ec2_instance_profile_name)
                  .and_return('baz')
          expect(
            subject.instance_variable_get(:@ec2_instance_profile_name)
          ).to be('baz')
        end

        it 'defaults to nil when none provided' do
          expect(
            subject.instance_variable_get(:@ec2_instance_profile_name)
          ).to be_nil
        end

        it 'raises when the given profile name is invalid' do
          expect do
            InstanceProfileCredentials.new(ec2_instance_profile_name: '  ')
          end.to raise_error(ArgumentError)
        end
      end

      context 'endpoint resolution' do
        let(:imds_client) { subject.instance_variable_get(:@client) }

        before do
          stub_request(:put, URI.join(endpoint, token_path))
            .to_return(status: 200, body: JSON.dump(token_value))

          [endpoint, ipv6_endpoint].each do |e|
            stub_request(:put, URI.join(e, token_path))
              .to_return(status: 200, body: JSON.dump(token_value))
            stub_request(:get, URI.join(e, extended_path))
              .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
              .to_return(status: 200, body: JSON.dump(profile_name))
            stub_request(:get, URI.join(e, extended_path, profile_name))
              .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
              .to_return(status: 200, body: '{}')
          end
        end

        it 'defaults to IPv4 endpoint' do
          expect(
            imds_client.instance_variable_get(:@endpoint)
          ).to eq ipv4_endpoint
        end

        it 'can be configured through code with precedence' do
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = ipv6_endpoint
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:ec2_metadata_service_endpoint)
                  .and_return(ipv6_endpoint)

          subject = InstanceProfileCredentials.new(
            endpoint: endpoint,
            backoff: 0
          )
          imds_client = subject.instance_variable_get(:@client)
          expect(imds_client.instance_variable_get(:@endpoint)).to eq endpoint
        end

        it 'can be configured using env variable with precedence' do
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = endpoint
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:ec2_metadata_service_endpoint)
                  .and_return(ipv6_endpoint)
          expect(imds_client.instance_variable_get(:@endpoint)).to eq endpoint
        end

        it 'can be configured with shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:ec2_metadata_service_endpoint)
                  .and_return(endpoint)
          expect(imds_client.instance_variable_get(:@endpoint)).to eq endpoint
        end

        it 'uses endpoint based on given endpoint mode' do
          subject = InstanceProfileCredentials.new(
            endpoint_mode: 'IPv6',
            backoff: 0
          )
          imds_client = subject.instance_variable_get(:@client)
          expect(
            imds_client.instance_variable_get(:@endpoint)
          ).to eq ipv6_endpoint
        end

        it 'uses endpoint based on endpoint mode in env variable ' do
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv6'
          expect(
            imds_client.instance_variable_get(:@endpoint)
          ).to eq ipv6_endpoint
        end

        it 'uses endpoint based on endpoint mode in shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:ec2_metadata_service_endpoint_mode)
                  .and_return('IPv6')
          expect(
            imds_client.instance_variable_get(:@endpoint)
          ).to eq ipv6_endpoint
        end

        it 'given endpoint takes precedence over endpoint mode' do
          subject = InstanceProfileCredentials.new(
            endpoint: endpoint,
            endpoint_mode: 'IPv6',
            backoff: 0
          )
          imds_client = subject.instance_variable_get(:@client)
          expect(
            imds_client.instance_variable_get(:@endpoint)
          ).to eq endpoint
        end
      end
    end

    describe '#retries' do
      it 'returns configured retries set on EC2Metadata client' do
        imds_client = EC2Metadata.new(retries: 5, backoff: 0)
        subject = InstanceProfileCredentials.new(client: imds_client)
        expect(subject.retries).to eq(imds_client.retries)
      end
    end

    describe '#credentials' do
      let(:expiration) { Time.now.utc + 3600 }
      let(:expiration2) { expiration + 3600 }
      let(:resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid",
          "SecretAccessKey" : "secret",
          "Token" : "my-token",
          "AccountId": "123456789101",
          "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      let(:resp2) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid-2",
          "SecretAccessKey" : "secret-2",
          "Token" : "my-token-2",
          "AccountId": "314253647589",
          "UnexpectedElement3": {
              "Name": "ignore-me"
          },
          "Expiration" : "#{expiration2.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      before do
        stub_request(:put, URI.join(ipv4_endpoint, token_path))
          .to_return(status: 200, body: JSON.dump(token_value))
      end

      it 'returns valid credentials with account id' do
        stub_request(:get, URI.join(ipv4_endpoint, extended_path))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: JSON.dump(profile_name))
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, profile_name))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)

        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.account_id).to eq('123456789101')
      end

      it 'returns valid credentials with account id when profile is given' do
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, 'foo'))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)

        c = InstanceProfileCredentials.new(
          ec2_instance_profile_name: 'foo'
        )
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.account_id).to eq('123456789101')
      end

      it 'returns valid credentials with account id when profile is unstable' do
        stub_request(:get, URI.join(ipv4_endpoint, extended_path))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: JSON.dump('profile-1'))
          .to_return(status: 200, body: JSON.dump('profile-2'))
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, 'profile-1'))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
          .to_return(status: 404)
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, 'profile-2'))
          .to_return(status: 200, body: resp2)

        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.account_id).to eq('123456789101')
        c.refresh!
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.account_id).to eq('314253647589')
      end

      it 'throws error when the given profile is invalid' do
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, 'invalid'))
          .to_return(status: 404)
        stub_request(:get, URI.join(ipv4_endpoint, legacy_path, 'invalid'))
          .to_return(status: 404)
        expect do
          InstanceProfileCredentials.new(
            backoff: 0,
            ec2_instance_profile_name: 'invalid'
          )
        end.to raise_error(InstanceProfileCredentials::InvalidProfile)
      end

      context 'fall back to legacy api' do
        let(:expiration) { Time.now.utc + 3600 }
        let(:expiration2) { expiration + 3600 }
        let(:resp) { <<-JSON.strip }
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "akid",
            "SecretAccessKey" : "secret",
            "Token" : "my-token",
            "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON

        let(:resp2) { <<-JSON.strip }
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "akid-2",
            "SecretAccessKey" : "secret-2",
            "Token" : "my-token-2",
            "UnexpectedElement3": {
                "Name": "ignore-me"
            },
            "Expiration" : "#{expiration2.strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON

        it 'returns valid credentials' do
          stub_request(:get, URI.join(ipv4_endpoint, extended_path))
            .to_return(status: 404)
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: JSON.dump('foo'))
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path, 'foo'))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp)

          c = InstanceProfileCredentials.new(backoff: 0)
          expect(c.credentials.access_key_id).to eq('akid')
          expect(c.credentials.secret_access_key).to eq('secret')
          expect(c.credentials.account_id).to be_nil
        end

        it 'returns valid credentials when a profile is given' do
          stub_request(:get, URI.join(ipv4_endpoint, extended_path, 'foo'))
            .to_return(status: 404)
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path, 'foo'))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp)

          c = InstanceProfileCredentials.new(
            backoff: 0, ec2_instance_profile_name: 'foo'
          )
          expect(c.credentials.access_key_id).to eq('akid')
          expect(c.credentials.secret_access_key).to eq('secret')
          expect(c.credentials.account_id).to be_nil
        end

        it 'returns valid credentials when profile is unstable' do
          stub_request(:get, URI.join(ipv4_endpoint, extended_path))
            .to_return(status: 404)
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: JSON.dump('profile-1'))
            .to_return(status: 200, body: JSON.dump('profile-2'))
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path, 'profile-1'))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp)
            .to_return(status: 404)
          stub_request(:get, URI.join(ipv4_endpoint, legacy_path, 'profile-2'))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp2)

          c = InstanceProfileCredentials.new(backoff: 0)
          expect(c.credentials.access_key_id).to eq('akid')
          expect(c.credentials.secret_access_key).to eq('secret')
          expect(c.credentials.account_id).to be_nil
          c.refresh!
          expect(c.credentials.access_key_id).to eq('akid-2')
          expect(c.credentials.secret_access_key).to eq('secret-2')
          expect(c.credentials.account_id).to be_nil
        end
      end
    end

    context '#refresh!' do
      let(:expiration) { Time.now.utc + 3600 }
      let(:expiration2) { expiration + 3600 }
      let(:resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid",
          "SecretAccessKey" : "secret",
          "Token" : "session-token",
          "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      let(:resp2) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid-2",
          "SecretAccessKey" : "secret-2",
          "Token" : "session-token-2",
          "Expiration" : "#{expiration2.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      it 're-queries credentials when #refresh! is called' do
        stub_request(:put, URI.join(ipv4_endpoint, token_path))
          .to_return(
            status: 200,
            body: JSON.dump(token_value),
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, URI.join(ipv4_endpoint, extended_path))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: JSON.dump(profile_name))
        stub_request(:get, URI.join(ipv4_endpoint, extended_path, profile_name))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
          .to_return(status: 200, body: resp2)

        c = InstanceProfileCredentials.new
        c.refresh!
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end
    end

    context 'static stability' do
      let(:expired) { Time.now.utc - 3600 }
      let(:near_expiration) { Time.now.utc + 10 }

      let(:expired_resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid",
          "SecretAccessKey" : "secret",
          "Token" : "session-token",
          "Expiration" : "#{expired.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      let(:near_expiration_resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid-2",
          "SecretAccessKey" : "secret-2",
          "Token" : "session-token-2",
          "Expiration" : "#{near_expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      before(:each) do
        stub_request(:put, URI.join(ipv4_endpoint, token_path))
          .to_return(
            status: 200,
            body: JSON.dump(token_value),
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, URI.join(ipv4_endpoint, extended_path))
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: JSON.dump(profile_name))
      end

      it 'provides credentials when the first call returns expired credentials' do
        expect_any_instance_of(InstanceProfileCredentials)
          .to receive(:warn).at_least(:once)

        expected_request =
          stub_request(:get, URI.join(ipv4_endpoint, extended_path, profile_name))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: expired_resp)

        provider = InstanceProfileCredentials.new(backoff: 0)
        creds = provider.credentials
        expect(creds.access_key_id).to eq('akid')
        assert_requested(expected_request, times: 1)

        # successive requests/credential gets don't result in more calls to imds
        provider.credentials
        provider.credentials
        provider.credentials

        assert_requested(expected_request, times: 1)
      end

      it 'provides credentials after a read timeout during a refresh' do
        expect_any_instance_of(InstanceProfileCredentials)
          .to receive(:warn).at_least(:once)
        expected_request =
          stub_request(:get, URI.join(ipv4_endpoint, extended_path, profile_name))
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: near_expiration_resp)
            .to_raise(Timeout::Error)

        provider = InstanceProfileCredentials.new( backoff: 0, retries: 0)
        expect(provider.credentials.access_key_id).to eq('akid-2')
        assert_requested(expected_request, times: 2)
      end
    end
  end
end
