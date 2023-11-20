# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe ECSCredentials do
    let(:path) { '/latest/credentials?id=foobarbaz' }

    context 'without ECS credential service present' do
      [
        Errno::EHOSTUNREACH,
        Errno::ECONNREFUSED,
        SocketError,
        Timeout::Error
      ].each do |error_class|
        it "returns no credentials for #{error_class}" do
          stub_request(:get, "http://169.254.170.2#{path}").to_raise(error_class)
          expect(ECSCredentials.new(credential_path: path, backoff: 0).set?).to be(false)
        end
      end
    end

    context 'with ECS credential service present' do
      before do
        ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
      end

      let(:expiration) { Time.now.utc + 3600 }
      let(:expiration2) { expiration + 3600 }

      let(:resp) { <<~JSON.strip }
        {
          "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
          "AccessKeyId" : "akid",
          "SecretAccessKey" : "secret",
          "Token" : "session-token",
          "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      let(:resp2) { <<~JSON.strip }
        {
          "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
          "AccessKeyId" : "akid-2",
          "SecretAccessKey" : "secret-2",
          "Token" : "session-token-2",
          "Expiration" : "#{expiration2.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      before(:each) do
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp)
          .to_return(status: 200, body: resp2)
      end

      it 'populates credentials from the instance profile' do
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session-token')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 're-queries the metadata service when #refresh! is called' do
        c = ECSCredentials.new
        c.refresh!
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries if the first load fails' do
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp2)
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries if get profile response is invalid JSON' do
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: ' ')
          .to_return(status: 200, body: '')
          .to_return(status: 200, body: '{')
          .to_return(status: 200, body: resp2)
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries invalid JSON exactly 3 times' do
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: '')
          .to_return(status: 200, body: ' ')
          .to_return(status: 200, body: '{')
          .to_return(status: 200, body: ' ')
        expect do
          ECSCredentials.new(backoff: 0)
        end.to raise_error(
          Aws::Errors::MetadataParserError,
          'Failed to parse metadata service response.'
        )
      end

      it 'retries errors parsing expiration time 3 times' do
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
          .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
        expect do
          ECSCredentials.new(backoff: 0)
        end.to raise_error(ArgumentError)
      end

      it "ignores ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] if also set" do
        # is not stubbed and should not be used
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'https://amazon.com:1234/path'
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid')
        expect(c.credentials.secret_access_key).to eq('secret')
        expect(c.credentials.session_token).to eq('session-token')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      context 'auto refreshing' do
        # expire in 4 minutes
        let(:expiration) { Time.now.utc + 299 }

        it 'auto-refreshes within 5 minutes from expiration' do
          c = ECSCredentials.new
          expect(c.credentials.access_key_id).to eq('akid-2')
          expect(c.credentials.secret_access_key).to eq('secret-2')
          expect(c.credentials.session_token).to eq('session-token-2')
          expect(c.expiration.to_s).to eq(expiration2.to_s)
        end
      end

      context 'failure cases' do
        let(:resp) { '{}' }

        it 'given an empty response, entry credentials are returned' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: resp)
          c = ECSCredentials.new
          expect(c.set?).to be(false)
          expect(c.credentials.access_key_id).to be(nil)
          expect(c.credentials.secret_access_key).to be(nil)
          expect(c.credentials.session_token).to be(nil)
          expect(c.expiration).to be(nil)
        end

        it 'raises if credential path or endpoint is not set' do
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = nil
          expect do
            ECSCredentials.new
          end.to raise_error(ArgumentError, /without a credential path/)
        end
      end
    end

    context 'retries' do
      before(:each) do
        ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
      end

      it 'defaults to 0' do
        stub_request(:get, "http://169.254.170.2#{path}").to_raise(SocketError)
        expect(ECSCredentials.new(backoff: 0).retries).to be(5)
      end

      it 'keeps trying "retries" times, with exponential backoff' do
        expected_request = stub_request(:get, "http://169.254.170.2#{path}")
                           .to_raise(Errno::ECONNREFUSED)
        expect(Kernel).to receive(:sleep).with(1)
        expect(Kernel).to receive(:sleep).with(2)
        expect(Kernel).to receive(:sleep).with(4)
        ECSCredentials.new(
          backoff: ->(n) { Kernel.sleep(2**n) },
          retries: 3
        )
        assert_requested(expected_request, times: 4)
      end
    end

    context 'AWS_CONTAINER_CREDENTIALS_FULL_URI' do
      let(:full_uri) { 'https://amazon.com:1234/path' }
      let(:loopback_uri) { 'http://localhost/path' }
      let(:loopback_ip) { 'http://127.0.0.1/path' }
      let(:loopback_ipv6) { 'http://[::1]/path' }
      let(:expiration) { Time.now.utc + 3600 }

      let(:resp) { <<~JSON.strip }
        {
          "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
          "AccessKeyId" : "akid-full",
          "SecretAccessKey" : "secret-full",
          "Token" : "session-token-full",
          "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
      JSON

      before(:each) do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = full_uri
        stub_request(:get, full_uri).to_return(status: 200, body: resp)
      end

      it 'raises for an http URI that is not a loopback' do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'http://amazon.com/path'
        expect(Resolv).to receive(:getaddresses).and_return(
          %w[205.251.242.103 52.94.236.248 54.239.28.85]
        )
        expect do
          ECSCredentials.new(backoff: 0)
        end.to raise_error(ArgumentError, /loopback/)
      end

      it 'raises for an http IP that is not a loopback' do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'http://205.251.242.103/path'
        expect do
          ECSCredentials.new(backoff: 0)
        end.to raise_error(ArgumentError, /loopback/)
      end

      it 'uses the full uri if https' do
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-full')
        expect(c.credentials.secret_access_key).to eq('secret-full')
        expect(c.credentials.session_token).to eq('session-token-full')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 'uses an http URI if it is a loopback' do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = loopback_uri
        stub_request(:get, loopback_uri).to_return(status: 200, body: resp)
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-full')
        expect(c.credentials.secret_access_key).to eq('secret-full')
        expect(c.credentials.session_token).to eq('session-token-full')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 'uses an http IP if it is a loopback' do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = loopback_ip
        stub_request(:get, loopback_ip).to_return(status: 200, body: resp)
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-full')
        expect(c.credentials.secret_access_key).to eq('secret-full')
        expect(c.credentials.session_token).to eq('session-token-full')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 'uses an http IPv6 if it is a loopback' do
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = loopback_ipv6
        stub_request(:get, loopback_ipv6).to_return(status: 200, body: resp)
        c = ECSCredentials.new(backoff: 0)
        expect(c.credentials.access_key_id).to eq('akid-full')
        expect(c.credentials.secret_access_key).to eq('secret-full')
        expect(c.credentials.session_token).to eq('session-token-full')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 'uses an authorization token if provided' do
        ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN'] = 'token'
        ECSCredentials.new(backoff: 0)
        expect(WebMock).to have_requested(:get, full_uri)
          .with(headers: { 'Authorization' => 'token' })
      end
    end
  end
end
