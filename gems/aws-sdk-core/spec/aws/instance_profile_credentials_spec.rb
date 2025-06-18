# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe InstanceProfileCredentials do
    let(:endpoint) { 'http://123.123.123.123' }
    let(:ipv4_endpoint) { 'http://169.254.169.254' }
    let(:ipv6_endpoint) { 'http://[fd00:ec2::254]' }
    let(:token_path) { '/latest/api/token' }
    let(:extended_path) { '/latest/meta-data/iam/security-credentials-extended/' }
    let(:fallback_path) { '/latest/meta-data/iam/security-credentials/' }
    let(:metadata_uri) { "#{ipv4_endpoint}#{extended_path}" }
    let(:fallback_uri) { "#{ipv4_endpoint}#{fallback_path}" }

    def json_response(expiration: nil, account_id: nil)
      resp = {
        "Code": 'Success',
        "LastUpdated": '2025-03-12T20:53:17.832308Z',
        "Type": 'AWS-HMAC',
        "AccessKeyId": 'ASIAIOSFODNN7EXAMPLE',
        "SecretAccessKey": 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        "Token": 'AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)',
        "Expiration": expiration || (Time.now + 3600).utc.iso8601,
        "UnexpectedElement1": { "Name": 'ignore-me-1' }
      }
      resp['AccountId'] = account_id if account_id
      resp.to_json
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

      context 'profile name resolution' do
        before do
          stub_request(:put, "#{ipv4_endpoint}#{token_path}").to_return(status: 200, body: "my-token\n")
          stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile\n")
          stub_request(:get, "#{metadata_uri}my-profile").to_return(status: 200, body: '{}')
        end

        it 'defaults to nil' do
          expect(subject.ec2_instance_profile_name).to be_nil
        end

        it 'can be configured from shared config' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('my-profile')
          expect(subject.ec2_instance_profile_name).to eq('my-profile')
        end

        it 'can be configured from environment with precedence over shared config' do
          ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] = 'my-profile'
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('foo')
          expect(subject.ec2_instance_profile_name).to eq('my-profile')
        end

        it 'can be configured in code with full precedence' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('foo')
          ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] = 'foo'
          subject = InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile', backoff: 0)
          expect(subject.ec2_instance_profile_name).to eq('my-profile')
        end

        it 'raises when the given profile name is empty' do
          expect do
            InstanceProfileCredentials.new(ec2_instance_profile_name: '  ')
          end.to raise_error(ArgumentError, /empty/)
        end
      end

      context 'endpoint resolution' do
        before do
          [ipv4_endpoint, ipv6_endpoint].each do |e|
            metadata_uri = e + extended_path
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

      it 'Test IMDS credentials provider returns valid credentials with account ID' do
        stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile-0001\n")
        stub_request(:get, "#{metadata_uri}my-profile-0001")
          .to_return(
            { status: 200, body: json_response(account_id: '123456789101') },
            { status: 200, body: json_response(account_id: '123456789101') }
          )
        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('123456789101')
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('123456789101')
      end

      it 'Test IMDS credentials provider with a given profile name returns valid credentials with account ID' do
        stub_request(:get, "#{metadata_uri}my-profile-0002")
          .to_return(
            { status: 200, body: json_response(account_id: '234567891011') },
            { status: 200, body: json_response(account_id: '234567891011') }
          )
        subject = InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0002', backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('234567891011')
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('234567891011')
      end

      it 'Test IMDS credentials provider when profile is unstable returns valid credentials with account ID' do
        stub_request(:get, metadata_uri)
          .to_return({ status: 200, 'body' => "my-profile-0003\n" }, { status: 200, 'body' => "my-profile-0003-b\n" })
        stub_request(:get, "#{metadata_uri}my-profile-0003")
          .to_return({ status: 200, body: json_response(account_id: '345678910112') }, { status: 404 })
        stub_request(:get, "#{metadata_uri}my-profile-0003-b")
          .to_return(status: 200, body: json_response(account_id: '314253647589'))

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('345678910112')
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to eq('314253647589')
      end

      it 'Test IMDS credentials provider with a given profile name when profile is invalid throws an error' do
        stub_request(:get, "#{metadata_uri}my-profile-0004").to_return(status: 404)
        stub_request(:get, "#{fallback_uri}my-profile-0004").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0004', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0004/)
      end

      it 'Test IMDS credentials provider when account ID is unavailable returns valid credentials' do
        stub_request(:get, metadata_uri).to_return(status: 200, body: "my-profile-0005\n")
        stub_request(:get, "#{metadata_uri}my-profile-0005")
          .to_return({ status: 200, body: json_response }, { status: 200, body: json_response })

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider with a given profile name when account ID is unavailable returns valid credentials' do
        stub_request(:get, "#{metadata_uri}my-profile-0006")
          .to_return({ status: 200, body: json_response }, { status: 200, body: json_response })

        subject = InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0006', backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider when account ID is unavailable when profile is unstable returns valid credentials' do
        stub_request(:get, metadata_uri)
          .to_return({ status: 200, body: "my-profile-0007\n" }, { status: 200, body: "my-profile-0007-b\n" })
        stub_request(:get, "#{metadata_uri}my-profile-0007")
          .to_return({ status: 200, body: json_response }, { status: 404 })
        stub_request(:get, "#{metadata_uri}my-profile-0007-b").to_return(status: 200, body: json_response)

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider with a given profile name when account ID is unavailable'\
         'when profile is invalid throws an error' do
        stub_request(:get, "#{metadata_uri}my-profile-0008").to_return(status: 404)
        stub_request(:get, "#{fallback_uri}my-profile-0008").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0008', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0008/)
      end

      it 'Test IMDS credentials provider against legacy API returns valid credentials' do
        stub_request(:get, metadata_uri).to_return(status: 404)
        stub_request(:get, fallback_uri).to_return(status: 200, body: "my-profile-0009\n")
        stub_request(:get, "#{fallback_uri}my-profile-0009")
          .to_return({ status: 200, body: json_response }, { status: 200, body: json_response })

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider with a given profile name against legacy API returns valid credentials' do
        stub_request(:get, "#{metadata_uri}my-profile-0010").to_return(status: 404)
        stub_request(:get, "#{fallback_uri}my-profile-0010")
          .to_return({ status: 200, body: json_response }, { status: 200, body: json_response })

        subject = InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0010', backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider against legacy API when profile is unstable returns valid credentials' do
        stub_request(:get, metadata_uri).to_return(status: 404)
        stub_request(:get, fallback_uri)
          .to_return({ status: 200, body: "my-profile-0011\n" }, { status: 200, body: "my-profile-0011-b\n" })
        stub_request(:get, "#{fallback_uri}my-profile-0011")
          .to_return({ status: 200, body: json_response }, { status: 404 })
        stub_request(:get, "#{fallback_uri}my-profile-0011-b").to_return(status: 200, body: json_response)

        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider with a given profile name against legacy API when profile is invalid throws an error' do
        stub_request(:get, "#{metadata_uri}my-profile-0012").to_return(status: 404)
        stub_request(:get, "#{fallback_uri}my-profile-0012").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0012', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0012/)
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

    context 'static stability' do
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
        expected_request =
          stub_request(:get, "#{metadata_uri}my-profile")
          .to_return(status: 200, body: near_expiration_resp.to_json)
          .to_raise(Timeout::Error)

        provider = InstanceProfileCredentials.new(backoff: 0, retries: 0)
        expect(provider.credentials.access_key_id).to eq('akid-2')
        assert_requested(expected_request, times: 2)
      end
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
