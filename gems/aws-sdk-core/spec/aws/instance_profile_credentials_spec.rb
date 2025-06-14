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

    let(:metadata_uri) { "#{ipv4_endpoint}/#{extended_path}" }
    let(:fallback_uri) {  "#{ipv4_endpoint}/#{fallback_path}" }

    describe '#initalize' do
      let(:subject) { InstanceProfileCredentials.new(backoff: 0) }

      before do
        [endpoint, ipv6_endpoint].each do |e|
          metadata_uri = e + extended_path
          stub_request(:put, e + token_path).to_return(status: 200, body: "my-token\n")
          stub_request(:get, metadata_uri)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: "my-profile\n")
          stub_request(:get, "#{metadata_uri}my-profile")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: '{}')
        end
      end

      it 'constructs an EC2Metadata if not provided' do
        ec2_metadata = double('EC2Metadata', get: nil)
        expect(EC2Metadata).to receive(:new).and_return(ec2_metadata)
        expect(subject.ec2_metadata).to be(ec2_metadata)
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

      it 'honors the :delay configuration as :backoff config' do
        dummy_proc = proc { 1 }
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).with(/backoff/)
        subject = InstanceProfileCredentials.new(delay: dummy_proc)
        expect(subject.ec2_metadata.backoff).to be(dummy_proc)
      end

      context 'profile name resolution' do
        it 'defaults to nil' do
          expect(subject.ec2_instance_profile_name).to be_nil
        end

        it 'can be configured from shared config' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('baz')
          expect(subject.ec2_instance_profile_name).to eq('baz')
        end

        it 'can be configured from environment with precedence over shared config' do
          ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] = 'bar'
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('baz')
          expect(subject.ec2_instance_profile_name).to eq('bar')
        end

        it 'can be configured in code with full precedence' do
          allow_any_instance_of(Aws::SharedConfig).to receive(:ec2_instance_profile_name).and_return('baz')
          ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] = 'bar'
          subject = InstanceProfileCredentials.new(ec2_instance_profile_name: 'foo', backoff: 0)
          expect(subject.ec2_instance_profile_name).to eq('foo')
        end

        it 'raises when the given profile name is empty' do
          expect do
            InstanceProfileCredentials.new(ec2_instance_profile_name: '  ')
          end.to raise_error(ArgumentError, /empty/)
        end
      end

      context 'endpoint resolution' do
        it 'defaults to IPv4 endpoint' do
          expect(subject.ec2_metadata.endpoint).to eq ipv4_endpoint
        end

        it 'honors the :ip_address configuration as :endpoint' do
          expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).with(/endpoint/)
          subject = InstanceProfileCredentials.new(ip_address: endpoint)
          expect(subject.ec2_metadata.endpoint).to eq(endpoint)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}")
          .to_return(status: 200, body: "my-profile-0001\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-12T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement1": {
            "Name": "ignore-me-1"
          },
          "AccountId": "123456789101"
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-12T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement1": {
            "Name": "ignore-me-1"
          },
          "AccountId": "123456789101"
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0001")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-13T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement2": {
            "Name": "ignore-me-2"
          },
          "AccountId": "234567891011"
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-13T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement2": {
            "Name": "ignore-me-2"
          },
          "AccountId": "234567891011"
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0002")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}/latest/meta-data/iam/security-credentials-extended/")
          .to_return(status: 200, 'body' => "my-profile-0003\n")
          .to_return(status: 200, 'body' => "my-profile-0003-b\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-14T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement3": {
            "Name": "ignore-me-3"
          },
          "AccountId": "345678910112"
        }
        stub_request(:get, "#{ipv4_endpoint}/latest/meta-data/iam/security-credentials-extended/my-profile-0003")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 404)
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-15T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement3": {
            "Name": "ignore-me-3"
          },
          "AccountId": "314253647589"
        }
        stub_request(:get, "#{ipv4_endpoint}/latest/meta-data/iam/security-credentials-extended/my-profile-0003-b")
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0004").to_return(status: 404)
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0004").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0004', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0004/)
      end

      it 'Test IMDS credentials provider when account ID is unavailable returns valid credentials' do
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}")
          .to_return(status: 200, body: "my-profile-0005\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-16T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement5": {
            "Name": "ignore-me-5"
          }
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-16T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement5": {
            "Name": "ignore-me-5"
          }
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0005")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-17T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement6": {
            "Name": "ignore-me-6"
          }
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-17T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement6": {
            "Name": "ignore-me-6"
          }
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0006")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}")
          .to_return(status: 200, body: "my-profile-0007\n")
          .to_return(status: 200, body: "my-profile-0007-b\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-18T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement7": {
            "Name": "ignore-me-7"
          }
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0007")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 404)
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-18T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration,
          "UnexpectedElement7": {
            "Name": "ignore-me-7"
          }
        }
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0007-b")
          .to_return(status: 200, body: resp2.to_json)
        subject = InstanceProfileCredentials.new(backoff: 0)
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
        subject.refresh!
        creds = subject.credentials
        expect(creds.access_key_id).to_not be_nil
        expect(creds.account_id).to be_nil
      end

      it 'Test IMDS credentials provider with a given profile name when account ID is unavailable when profile is invalid throws an error' do
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0008").to_return(status: 404)
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0008").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0008', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0008/)
      end

      it 'Test IMDS credentials provider against legacy API returns valid credentials' do
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}")
          .to_return(status: 404)
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}")
          .to_return(status: 200, body: "my-profile-0009\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-20T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-20T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0009")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0010").to_return(status: 404)
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-21T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-21T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0010")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}")
          .to_return(status: 404)
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}")
          .to_return(status: 200, body: "my-profile-0011\n")
          .to_return(status: 200, body: "my-profile-0011-b\n")
        resp1 = {
          "Code": "Success",
          "LastUpdated": "2025-03-22T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0011")
          .to_return(status: 200, body: resp1.to_json)
          .to_return(status: 404)
        resp2 = {
          "Code": "Success",
          "LastUpdated": "2025-03-22T20:53:17.832308Z",
          "Type": "AWS-HMAC",
          "AccessKeyId": "ASIAIOSFODNN7EXAMPLE",
          "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
          "Token": "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKw...(truncated)",
          "Expiration": expiration
        }
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0011-b")
          .to_return(status: 200, body: resp2.to_json)
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
        stub_request(:get, "#{ipv4_endpoint}#{extended_path}my-profile-0012").to_return(status: 404)
        stub_request(:get, "#{ipv4_endpoint}#{fallback_path}my-profile-0012").to_return(status: 404)
        expect { InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-0012', backoff: 0) }
          .to raise_error(InstanceProfileCredentials::InvalidProfile, /my-profile-0012/)
      end
    end

    describe '#refresh!' do
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
        stub_request(:put, ipv4_endpoint + token_path)
          .to_return(status: 200, body: "my-token\n", headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' })
        stub_request(:get, metadata_uri)
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "my-profile\n")
        stub_request(:get, "#{metadata_uri}my-profile")
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
        stub_request(:put, ipv4_endpoint + token_path)
          .to_return(status: 200, body: "my-token\n", headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' })
        stub_request(:get, metadata_uri)
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "my-profile\n")
      end

      it 'provides credentials when the first call returns expired credentials' do
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).at_least(:once)

        expected_request =
          stub_request(:get, "#{metadata_uri}my-profile")
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
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).at_least(:once)
        expected_request =
          stub_request(:get, "#{metadata_uri}my-profile")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: near_expiration_resp)
          .to_raise(Timeout::Error)

        provider = InstanceProfileCredentials.new(backoff: 0, retries: 0)
        expect(provider.credentials.access_key_id).to eq('akid-2')
        assert_requested(expected_request, times: 2)
      end
    end
  end
end
