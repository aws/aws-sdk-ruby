# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe InstanceProfileCredentials do
    let(:path) { '/latest/meta-data/iam/security-credentials/' }

    let(:token_path) { '/latest/api/token' }

    let(:ipv4_endpoint) { 'http://169.254.169.254' }
    let(:ipv6_endpoint) { 'http://[fd00:ec2::254]' }

    describe 'endpoint mode resolution' do
      before do
        allow_any_instance_of(InstanceProfileCredentials).to receive(:refresh)
      end

      it 'mode is ipv4 by default' do
        subject = InstanceProfileCredentials.new
        expect(subject.instance_variable_get(:@endpoint)).to eq ipv4_endpoint
      end

      it 'can be configured with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv6')
        subject = InstanceProfileCredentials.new
        expect(subject.instance_variable_get(:@endpoint)).to eq ipv6_endpoint
      end

      it 'can be configured using env variable with precedence' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv6')
        subject = InstanceProfileCredentials.new
        expect(subject.instance_variable_get(:@endpoint)).to eq ipv4_endpoint
      end

      it 'can be configure through code with precedence' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
        subject = InstanceProfileCredentials.new(endpoint_mode: 'IPv6')
        expect(subject.instance_variable_get(:@endpoint)).to eq ipv6_endpoint
      end

      it 'raises ArgumentError when endpoint mode is unexpected' do
        expect { InstanceProfileCredentials.new(endpoint_mode: 'IPv69') }
          .to raise_error(ArgumentError)
      end
    end

    describe 'endpoint configuration' do
      before do
        allow_any_instance_of(InstanceProfileCredentials).to receive(:refresh)
      end

      it 'can be configured without a scheme' do
        subject = InstanceProfileCredentials.new(
          endpoint: '123.123.123.123'
        )
        expect(subject.instance_variable_get(:@endpoint))
          .to eq '123.123.123.123'
      end

      it 'can be configured with a scheme' do
        subject = InstanceProfileCredentials.new(
          endpoint: 'http://123.123.123.123'
        )
        expect(subject.instance_variable_get(:@endpoint))
          .to eq 'http://123.123.123.123'
      end

      it 'still supports ip_address' do
        subject = InstanceProfileCredentials.new(
          ip_address: '123.123.123.123'
        )
        expect(subject.instance_variable_get(:@endpoint))
          .to eq '123.123.123.123'
      end
    end

    describe 'endpoint resolution' do
      let(:endpoint) { 'http://123.123.123.123' }

      before do
        allow_any_instance_of(InstanceProfileCredentials).to receive(:refresh)
      end

      it 'can be configured with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint).and_return(endpoint)
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end

      it 'can be configured using env variable with precedence' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = endpoint
        subject = InstanceProfileCredentials.new
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end

      it 'can be configured through code with precedence' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint)
          .and_return('bar-example.com')
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = 'foo-example.com'
        subject = InstanceProfileCredentials.new(ip_address: endpoint)
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end

      it 'overrides endpoint mode configuration with ENV' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = endpoint
        subject = InstanceProfileCredentials.new(endpoint_mode: 'IPv4')
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end

      it 'overrides endpoint mode configuration with shared config' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint).and_return(endpoint)
        subject = InstanceProfileCredentials.new(endpoint_mode: 'IPv4')
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end

      it 'overrides endpoint mode configuration with code' do
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv4'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:ec2_metadata_service_endpoint_mode).and_return('IPv4')
        subject = InstanceProfileCredentials.new(
          endpoint_mode: 'IPv4', endpoint: endpoint
        )
        expect(subject.instance_variable_get(:@endpoint)).to eq endpoint
      end
    end

    describe 'without instance metadata service present' do
      [
        Errno::EHOSTUNREACH,
        Errno::ECONNREFUSED,
        SocketError,
        Timeout::Error
      ].each do |error_class|
        it "returns no credentials for #{error_class}" do
          stub_request(:put, "http://169.254.169.254#{token_path}")
            .to_return(status: 200, body: 'mytoken')
          stub_request(:get, "http://169.254.169.254#{path}").to_raise(error_class)
          expect(InstanceProfileCredentials.new(backoff: 0).set?).to be(false)
        end
      end

      [
        400,
        401
      ].each do |error_code|
        it "returns no credentials for #{error_code} when fetching token" do
          stub_request(:put, "http://169.254.169.254#{token_path}")
            .to_return(status: error_code)
          stub_request(:get, "http://169.254.169.254#{path}")
            .to_return(status: 200)
          expect(InstanceProfileCredentials.new(backoff: 0).set?).to be(false)
        end
      end
    end

    describe 'can fail over to insecure flow' do
      let(:expiration) { Time.now.utc + 3600 }

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

      [
        403,
        404
      ].each do |error_code|
        it "fails over to insecure flow for error code #{error_code}" do
          stub_request(:put, "http://169.254.169.254#{token_path}")
            .to_return(status: 404)
          stub_request(:get, "http://169.254.169.254#{path}")
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "http://169.254.169.254#{path}profile-name")
            .to_return(status: 200, body: resp)
          c = InstanceProfileCredentials.new(backoff: 0)
          expect(c.credentials.access_key_id).to eq('akid')
          expect(c.credentials.secret_access_key).to eq('secret')
          expect(c.credentials.session_token).to eq('session-token')
        end
      end

      [
        Errno::EHOSTUNREACH,
        Errno::ECONNREFUSED,
        SocketError,
        Timeout::Error
      ].each do |error_class|
        it "fails over to insecure flow for #{error_class}" do
          stub_request(:put, "http://169.254.169.254#{token_path}")
            .to_raise(error_class)
          stub_request(:get, "http://169.254.169.254#{path}")
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "http://169.254.169.254#{path}profile-name")
            .to_return(status: 200, body: resp)
          c = InstanceProfileCredentials.new(backoff: 0)
          expect(c.credentials.access_key_id).to eq('akid')
          expect(c.credentials.secret_access_key).to eq('secret')
          expect(c.credentials.session_token).to eq('session-token')
        end
      end
    end

    describe 'disable flag' do
      let(:env) { {} }

      before(:each) do
        stub_const('ENV', env)
      end

      it 'does not attempt to get credentials when disable flag set' do
        env['AWS_EC2_METADATA_DISABLED'] = 'true'
        expect(InstanceProfileCredentials.new.set?).to be(false)
      end

      it 'has a disable flag which is not case sensitive' do
        env['AWS_EC2_METADATA_DISABLED'] = 'TrUe'
        expect(InstanceProfileCredentials.new.set?).to be(false)
      end

      it 'ignores values other than true for the disable flag secure' do
        env['AWS_EC2_METADATA_DISABLED'] = '1'
        expiration = Time.now.utc + 3600
        resp = <<-JSON.strip
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
        stub_request(:put, "http://169.254.169.254#{token_path}")
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session-token')
      end

      it 'ignores values other than true for the disable flag insecure' do
        env['AWS_EC2_METADATA_DISABLED'] = '1'
        expiration = Time.now.utc + 3600
        resp = <<-JSON.strip
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
        stub_request(:put, "http://169.254.169.254#{token_path}")
          .to_return(status: 404)
        stub_request(:get, "http://169.254.169.254#{path}")
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .to_return(status: 200, body: resp)
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session-token')
      end
    end

    describe 'with instance metadata service present' do
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

      before(:each) do
        stub_request(:put, "http://169.254.169.254#{token_path}")
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
          .to_return(status: 200, body: resp2)
      end

      it 'populates credentials from the instance profile' do
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session-token')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 're-queries the metadata service when #refresh! is called' do
        c = InstanceProfileCredentials.new
        c.refresh!
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries if the first load fails' do
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 500)
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp2)
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries if get profile response is invalid JSON' do
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 500)
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: ' ')
          .to_return(status: 200, body: '')
          .to_return(status: 200, body: '{')
          .to_return(status: 200, body: resp2)
        c = InstanceProfileCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries invalid JSON exactly 3 times' do
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 500)
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: '')
          .to_return(status: 200, body: ' ')
          .to_return(status: 200, body: '{')
          .to_return(status: 200, body: ' ')
        expect do
          InstanceProfileCredentials.new(backoff: 0)
        end.to raise_error(
          Aws::Errors::MetadataParserError,
          'Failed to parse metadata service response.'
        )
      end

      it 'retries errors parsing expiration time 3 times' do
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 500)
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
        expect do
          InstanceProfileCredentials.new(backoff: 0)
        end.to raise_error(ArgumentError)
      end

      describe 'auto refreshing' do
        # expire in 4 minutes
        let(:expiration) { Time.now.utc + 299 }

        it 'auto-refreshes within 5 minutes from expiration' do
          c = InstanceProfileCredentials.new
          expect(c.credentials.access_key_id).to eq('akid-2')
          expect(c.credentials.secret_access_key).to eq('secret-2')
          expect(c.credentials.session_token).to eq('session-token-2')
          expect(c.expiration.to_s).to eq(expiration2.to_s)
        end
      end

      describe 'failure cases' do
        let(:resp) { '{}' }

        it 'given an empty response, entry credentials are returned' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, "http://169.254.169.254#{path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp)
          c = InstanceProfileCredentials.new
          expect(c.set?).to be(false)
          expect(c.credentials.access_key_id).to be(nil)
          expect(c.credentials.secret_access_key).to be(nil)
          expect(c.credentials.session_token).to be(nil)
          expect(c.expiration).to be(nil)
        end
      end
    end

    describe '#retries' do
      before(:each) do
        stub_request(:put, "http://169.254.169.254#{token_path}")
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_raise(Errno::ECONNREFUSED)
        stub_request(:get, "http://169.254.169.254#{path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_raise(Errno::ECONNREFUSED)
      end

      it 'defaults to 1' do
        expect(InstanceProfileCredentials.new(backoff: 0).retries).to be(1)
      end

      it 'keeps trying "retries" times, with exponential backoff' do
        expected_request = stub_request(:get, "http://169.254.169.254#{path}")
                           .to_raise(Errno::ECONNREFUSED)
        expect(Kernel).to receive(:sleep).with(1)
        expect(Kernel).to receive(:sleep).with(2)
        expect(Kernel).to receive(:sleep).with(4)
        InstanceProfileCredentials.new(
          backoff: ->(n) { Kernel.sleep(2**n) },
          retries: 3
        )
        assert_requested(expected_request, times: 4)
      end
    end

    describe 'static stability' do
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
        stub_request(:put, "http://169.254.169.254#{token_path}")
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, "http://169.254.169.254#{path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
      end

      it 'provides credentials when the first call returns expired credentials' do
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn).at_least(:once)

        expected_request = stub_request(:get, "http://169.254.169.254#{path}profile-name")
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
        expect_any_instance_of(InstanceProfileCredentials).to receive(:warn)
        expected_request = stub_request(:get, "http://169.254.169.254#{path}profile-name")
                             .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
                             .to_return(status: 200, body: near_expiration_resp)
                             .to_raise(Timeout::Error)

        provider = InstanceProfileCredentials.new(backoff: 0, retries: 0)

        creds = provider.credentials

        expect(creds.access_key_id).to eq('akid-2')
        assert_requested(expected_request, times: 2)
      end
    end
  end
end
