# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe InstanceProfileCredentials do
    let(:path) { '/latest/meta-data/iam/security-credentials/' }
    let(:token_path) { '/latest/api/token' }
    let(:endpoint) { 'http://123.123.123.123' }
    let(:ipv4_endpoint) { 'http://169.254.169.254' }
    let(:ipv6_endpoint) { 'http://[fd00:ec2::254]' }
    let(:metadata_uri) { "#{ipv4_endpoint}#{path}" }

    def json_response(expiration: nil)
      {
        "Code": 'Success',
        "LastUpdated": '2025-03-12T20:53:17.832308Z',
        "Type": 'AWS-HMAC',
        "AccessKeyId": 'ASIAIOSFODNN7EXAMPLE',
        "SecretAccessKey": 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        "Token": 'AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)',
        "Expiration": expiration || (Time.now + 3600).utc.iso8601,
        "UnexpectedElement1": { "Name": 'ignore-me-1' }
      }.to_json
    end

    describe '#initalize' do
      let(:subject) { InstanceProfileCredentials.new(backoff: 0) }

      context 'ec2 metadata client' do
        before do
          stub_request(:put, "#{ipv4_endpoint}#{token_path}").to_return(status: 200, body: "my-token\n")
          stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile\n")
          stub_request(:get, "#{metadata_uri}my-profile").to_return(status: 200, body: '{}')
        end

        it 'constructs an EC2Metadata if not provided' do
          expect(EC2Metadata).to receive(:new).and_call_original
          subject
        end

        it 'constructs an EC2Metadata with provided configurations' do
          subject = InstanceProfileCredentials.new(retries: 2, backoff: 0)
          expect(subject.ec2_metadata.retries).to be(2)
        end

        it 'sets EC2Metadata when provided' do
          ec2_metadata = EC2Metadata.new(backoff: 0)
          subject = InstanceProfileCredentials.new(ec2_metadata: ec2_metadata)
          expect(subject.ec2_metadata).to be(ec2_metadata)
        end

        it 'honors the :delay configuration as :backoff' do
          dummy_proc = proc { 1 }
          expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).with(/backoff/)
          subject = InstanceProfileCredentials.new(delay: dummy_proc)
          expect(subject.ec2_metadata.backoff).to be(dummy_proc)
        end
      end

      context 'endpoint resolution' do
        before do
          [ipv4_endpoint, ipv6_endpoint].each do |e|
            metadata_uri = e + path
            stub_request(:put, e + token_path).to_return(status: 200, body: "my-token\n")
            stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile\n")
            stub_request(:get, "#{metadata_uri}my-profile").to_return(status: 200, body: '{}')
          end
        end

        it 'defaults to IPv4 endpoint' do
          expect(subject.ec2_metadata.endpoint).to eq ipv4_endpoint
        end

        it 'honors the :ip_address configuration as :endpoint' do
          expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).with(/endpoint/)
          subject = InstanceProfileCredentials.new(ip_address: ipv6_endpoint)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint can be configured from shared config' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint).and_return(ipv6_endpoint)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint can be configured from environment with precedence over shared config' do
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = ipv6_endpoint
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint).and_return(endpoint)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint can be configured in code with full precedence' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint).and_return(endpoint)
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = endpoint
          subject = InstanceProfileCredentials.new(endpoint: ipv6_endpoint, backoff: 0)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint mode can be configured from shared config' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv6')
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint mode can be configured from environment with precedence over shared config' do
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv6'
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'endpoint mode can be configured in code with full precedence' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
          ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
          subject = InstanceProfileCredentials.new(endpoint_mode: 'IPv6', backoff: 0)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end

        it 'given endpoint takes precedence over endpoint mode' do
          subject = InstanceProfileCredentials.new(endpoint: ipv6_endpoint, endpoint_mode: 'IPv4', backoff: 0)
          expect(subject.ec2_metadata.endpoint).to eq(ipv6_endpoint)
        end
      end
    end

    describe '#credentials' do
      let(:expiration) { (Time.now + 3600).utc.iso8601 }

      before do
        stub_request(:put, ipv4_endpoint + token_path)
          .to_return(status: 200, body: "my-token\n", headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' })
      end

      it 'returns valid credentials' do
        stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile-0009\n")
        stub_request(:get, "#{metadata_uri}my-profile-0009")
          .to_return({ status: 200, body: json_response }, { status: 200, body: json_response })

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
      end

      it 'does not attempt to get credentials when AWS_EC2_METADATA_DISABLED ENV is true' do
        ENV['AWS_EC2_METADATA_DISABLED'] = 'true'
        expect(InstanceProfileCredentials.new.set?).to be(false)
      end

      describe 'failure cases' do
        it 'is not set when given an empty response' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, "#{metadata_uri}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: '{}')
          c = InstanceProfileCredentials.new(backoff: 0)
          expect(c.set?).to be(false)
          expect(c.credentials.access_key_id).to be(nil)
          expect(c.credentials.secret_access_key).to be(nil)
          expect(c.credentials.session_token).to be(nil)
          expect(c.expiration).to be(nil)
        end

        context 'invalid json response' do
          before(:each) do
            stub_request(:put, "#{ipv4_endpoint}#{token_path}").to_return(status: 200, body: "my-token\n")
            stub_request(:get, metadata_uri).to_return(status: 200, body: "profile-name\n")
          end

          it 'retries if get profile response is invalid JSON' do
            expiration = Time.now.utc + 3600
            expiration2 = expiration + 3600
            resp = {
              "Code": 'Success',
              "LastUpdated": '2013-11-22T20:03:48Z',
              "Type": 'AWS-HMAC',
              "AccessKeyId": 'akid-2',
              "SecretAccessKey": 'secret-2',
              "Token": 'session-token-2',
              "Expiration": expiration2.strftime('%Y-%m-%dT%H:%M:%SZ').to_s
            }.to_json
            stub_request(:get, "#{metadata_uri}profile-name")
              .to_return(
                { status: 200, body: ' ' },
                { status: 200, body: '' },
                { status: 200, body: '{' },
                { status: 200, body: resp }
              )
            c = InstanceProfileCredentials.new(backoff: 0)
            expect(c.credentials.access_key_id).to eq('akid-2')
            expect(c.credentials.secret_access_key).to eq('secret-2')
            expect(c.credentials.session_token).to eq('session-token-2')
            expect(c.expiration.to_s).to eq(expiration2.to_s)
          end

          it 'retries invalid JSON exactly 3 times' do
            stub_request(:get, "#{metadata_uri}profile-name")
              .to_return(
                { status: 200, body: '' },
                { status: 200, body: ' ' },
                { status: 200, body: '{' },
                { status: 200, body: ' ' }
              )
            expect { InstanceProfileCredentials.new(backoff: 0) }
              .to raise_error(Aws::Errors::MetadataParserError, 'Failed to parse metadata service response.')
          end
        end
      end
    end

    describe '#refresh!' do
      it 're-queries credentials when #refresh! is called' do
        expiration = Time.now.utc + 3600
        expiration2 = expiration + 3600
        credentials_resp = {
          "Code": 'Success',
          "LastUpdated": '2013-11-22T20:03:48Z',
          "Type": 'AWS-HMAC',
          "AccessKeyId": 'akid',
          "SecretAccessKey": 'secret',
          "Token": 'session-token',
          "Expiration": expiration.strftime('%Y-%m-%dT%H:%M:%SZ').to_s
        }.to_json
        credentials_resp2 = {
          "Code": 'Success',
          "LastUpdated": '2013-11-22T20:03:48Z',
          "Type": 'AWS-HMAC',
          "AccessKeyId": 'akid-2',
          "SecretAccessKey": 'secret-2',
          "Token": 'session-token-2',
          "Expiration": expiration2.strftime('%Y-%m-%dT%H:%M:%SZ').to_s
        }.to_json
        stub_request(:put, ipv4_endpoint + token_path).to_return(status: 200, body: "my-token\n")
        stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile\n")
        stub_request(:get, "#{metadata_uri}my-profile")
          .to_return(
            { status: 200, body: credentials_resp },
            { status: 200, body: credentials_resp2 }
          )
        c = InstanceProfileCredentials.new
        c.refresh!
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end
    end

    describe 'auto refreshing' do
      # expire in 4 minutes
      let(:expiration) { Time.now + 299 }
      let(:expiration2) { expiration + 3600 }

      it 'auto-refreshes within 5 minutes from expiration' do
        stub_request(:put, ipv4_endpoint + token_path)
          .to_return(status: 200, body: "my-token\n", headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' })
        stub_request(:get, metadata_uri)
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "#{metadata_uri}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: json_response(expiration: expiration.utc.iso8601))
          .to_return(status: 200, body: json_response(expiration: expiration2.utc.iso8601))

        c = InstanceProfileCredentials.new
        expect(c.credentials.set?).to eq(true)
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end
    end

    describe 'static stability' do
      let(:expired) { Time.now.utc - 3600 }
      let(:near_expiration) { Time.now.utc + 10 }

      before(:each) do
        stub_request(:put, ipv4_endpoint + token_path).to_return(status: 200, body: "my-token\n")
        stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile\n")
      end

      it 'provides credentials when the first call returns expired credentials' do
        expired_resp = {
          "Code": 'Success',
          "LastUpdated": '2013-11-22T20:03:48Z',
          "Type": 'AWS-HMAC',
          "AccessKeyId": 'akid',
          "SecretAccessKey": 'secret',
          "Token": 'session-token',
          "Expiration": expired.strftime('%Y-%m-%dT%H:%M:%SZ').to_s
        }.to_json
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).at_least(:once)
        expected_request = stub_request(:get, "#{metadata_uri}my-profile").to_return(status: 200, body: expired_resp)

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
        near_expiration_resp = {
          "Code": 'Success',
          "LastUpdated": '2013-11-22T20:03:48Z',
          "Type": 'AWS-HMAC',
          "AccessKeyId": 'akid-2',
          "SecretAccessKey": 'secret-2',
          "Token": 'session-token-2',
          "Expiration": near_expiration.strftime('%Y-%m-%dT%H:%M:%SZ').to_s
        }
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).at_least(:once)
        expected_request = stub_request(:get, "#{metadata_uri}my-profile")
                           .to_return(status: 200, body: near_expiration_resp.to_json)
                           .to_raise(Timeout::Error)
        provider = InstanceProfileCredentials.new(backoff: 0, retries: 0)
        expect(provider.credentials.access_key_id).to eq('akid-2')
        assert_requested(expected_request, times: 2)
      end
    end

    describe 'v1 fallback' do
      context 'disable_imds_v1 configuration' do
        let(:disable_imds_v1) { true }

        before do
          allow_any_instance_of(InstanceProfileCredentials).to receive(:refresh)
        end

        it 'can be configured with shared config' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_v1_disabled).and_return('true')
          expect(subject.ec2_metadata.instance_variable_get(:@disable_imds_v1)).to eq(disable_imds_v1)
        end

        it 'can be configured using env variable with precedence' do
          ENV['AWS_EC2_METADATA_V1_DISABLED'] = disable_imds_v1.to_s
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_v1_disabled).and_return('false')
          expect(subject.ec2_metadata.instance_variable_get(:@disable_imds_v1)).to eq(disable_imds_v1)
        end

        it 'can be configured through code with precedence' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_metadata_v1_disabled).and_return('false')
          ENV['AWS_EC2_METADATA_V1_DISABLED'] = 'false'
          subject = InstanceProfileCredentials.new(disable_imds_v1: disable_imds_v1)
          expect(subject.ec2_metadata.instance_variable_get(:@disable_imds_v1)).to eq(disable_imds_v1)
        end
      end

      it 'is used to fetch credentials' do
        stub_request(:put, ipv4_endpoint + token_path).to_return(status: 404)
        stub_request(:get, metadata_uri).to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "#{metadata_uri}profile-name").to_return(status: 200, body: json_response)
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.set?).to eq(true)
      end

      it 'memoizes v1 fallback' do
        token_stub = stub_request(:put, ipv4_endpoint + token_path).to_return(status: 403)
        profile_name_stub = stub_request(:get, metadata_uri).to_return(status: 200, body: "profile-name\n")
        credentials_stub = stub_request(:get, "#{metadata_uri}profile-name").to_return(status: 200, body: json_response)

        c = InstanceProfileCredentials.new(backoff: 0, retries: 0)
        expect(c.credentials.set?).to eq(true)
        c.refresh!
        expect(c.credentials.set?).to eq(true)

        expect(token_stub).to have_been_requested.once
        expect(profile_name_stub).to have_been_requested.twice
        expect(credentials_stub).to have_been_requested.twice
      end
    end
  end
end
