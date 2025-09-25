# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe InstanceProfileCredentialsProvider do
      let(:options) { { backoff: 0, retries: 0 } }
      let(:path) { '/latest/meta-data/iam/security-credentials/' }

      let(:token_path) { '/latest/api/token' }
      let(:ipv4_endpoint) { 'http://169.254.169.254' }
      let(:ipv4_endpoint_token_path) { ipv4_endpoint + token_path }
      let(:ipv4_endpoint_creds_path) { ipv4_endpoint + path }

      let(:expiration) { Time.now.round + 3600 }
      let(:resp) { <<-JSON.strip }
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "akid",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "AccountId" : "123456789012",
            "Expiration" : "#{expiration.iso8601}"
          }
      JSON

      let(:expiration2) { expiration + 3600 }
      let(:resp2) { <<-JSON.strip }
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "akid-2",
            "SecretAccessKey" : "secret-2",
            "Token" : "session-token-2",
            "AccountId" : "120987654321",
            "Expiration" : "#{expiration2.iso8601}"
          }
      JSON

      before do
        allow_any_instance_of(InstanceProfileCredentialsProvider).to receive(:warn)

        stub_request(:put, ipv4_endpoint_token_path)
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, ipv4_endpoint_creds_path)
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
          .to_return(status: 200, body: resp2)
      end

      it 'populates credentials from the instance profile' do
        provider = InstanceProfileCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
      end

      it 're-queries the metadata service when #refresh! is called and reuses cached token' do
        provider = InstanceProfileCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
        provider.refresh!
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid-2')
        expect(creds.secret_access_key).to eq('secret-2')
        expect(creds.session_token).to eq('session-token-2')
        expect(creds.account_id).to eq('120987654321')
        expect(provider.expiration).to eq(expiration2)
        # ensure that cached token is used rather than making another PUT request
        assert_requested(stub_request(:put, ipv4_endpoint_token_path), times: 1)
      end

      it 're-queries the metadata service when #refresh! is called and refreshes expired token' do
        stub_request(:put, ipv4_endpoint_token_path)
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '1' }
          )
        provider = InstanceProfileCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
        expect_any_instance_of(EC2Metadata::Token).to receive(:expired?).and_return(true)
        provider.refresh!
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid-2')
        expect(creds.secret_access_key).to eq('secret-2')
        expect(creds.session_token).to eq('session-token-2')
        expect(creds.account_id).to eq('120987654321')
        expect(provider.expiration).to eq(expiration2)
        # ensure that another PUT request was made to retrieve new token
        assert_requested(stub_request(:put, ipv4_endpoint_token_path), times: 2)
        # ensure only one GET request was made to retrieve profile name the first time, cached value used after
        assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 1)
      end

      it 'uses ec2_instance_profile_name when given' do
        stub_request(:get, "#{ipv4_endpoint_creds_path}my-profile-name")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
        provider = InstanceProfileCredentialsProvider.new(
          options.merge(ec2_instance_profile_name: 'my-profile-name')
        )
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
        # ensure no GET request was made to retrieve profile name
        assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 0)
      end

      context 'failure cases' do
        it 'returns empty credentials when given an empty response' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: '{}')
          provider = InstanceProfileCredentialsProvider.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to be(nil)
          expect(creds.secret_access_key).to be(nil)
          expect(creds.session_token).to be(nil)
          expect(creds.account_id).to be(nil)
          expect(provider.expiration).to be(nil)
        end

        it 'raises for invalid JSON' do
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 503)
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: '{')
          expect do
            InstanceProfileCredentialsProvider.new(backoff: 0)
          end.to raise_error(/Failed to parse IMDS service response/)
        end

        it 'warns when instance profile name metadata was not found' do
          expect_any_instance_of(InstanceProfileCredentialsProvider).to receive(:warn)
            .with(/Error retrieving instance profile credentials/)

          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 404)
          provider = InstanceProfileCredentialsProvider.new
          creds = provider.identity
          expect(creds.access_key_id).to be(nil)
          expect(creds.secret_access_key).to be(nil)
          expect(creds.session_token).to be(nil)
          expect(creds.account_id).to be(nil)
          expect(provider.expiration).to be(nil)
        end
      end

      context 'retries' do
        it 'retries if the first request fails' do
          stub_request(:put, ipv4_endpoint_token_path)
            .to_return(status: 503)
            .to_return(
              status: 200,
              body: "my-token\n",
              headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
            )
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 503)
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp2)
          provider = InstanceProfileCredentialsProvider.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.account_id).to eq('120987654321')
          expect(provider.expiration).to eq(expiration2)
        end

        it 'retries a default of 3 times when PUT returns retryable error' do
          stub_request(:put, ipv4_endpoint_token_path).to_return(status: 503)
          InstanceProfileCredentialsProvider.new(backoff: 0)
          assert_requested(stub_request(:put, ipv4_endpoint_token_path), times: 4)
        end

        it 'retries a default of 3 times when GET returns retryable error' do
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 503)
          InstanceProfileCredentialsProvider.new(backoff: 0)
          assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 4)
        end
      end

      context 'static stability' do
        let(:expired) { Time.now.round - 3600 }
        let(:expired_resp) { <<-JSON.strip }
            {
              "Code" : "Success",
              "LastUpdated" : "2013-11-22T20:03:48Z",
              "Type" : "AWS-HMAC",
              "AccessKeyId" : "akid",
              "SecretAccessKey" : "secret",
              "Token" : "session-token",
              "AccountId" : "123456789012",
              "Expiration" : "#{expired.iso8601}"
            }
        JSON

        let(:near_expiration) { Time.now.round + 10 }
        let(:near_expiration_resp) { <<-JSON.strip }
            {
              "Code" : "Success",
              "LastUpdated" : "2013-11-22T20:03:48Z",
              "Type" : "AWS-HMAC",
              "AccessKeyId" : "akid-2",
              "SecretAccessKey" : "secret-2",
              "Token" : "session-token-2",
              "AccountId" : "120987654321",
              "Expiration" : "#{near_expiration.iso8601}"
            }
        JSON

        before do
          stub_request(:put, ipv4_endpoint_token_path)
            .to_return(
              status: 200,
              body: "my-token\n",
              headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
            )
          stub_request(:get, ipv4_endpoint + path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: "profile-name\n")
        end

        it 'provides credentials when the first call returns expired credentials' do
          expect_any_instance_of(InstanceProfileCredentialsProvider).to receive(:warn)
            .at_least(:once)
            .with(/Attempting credential expiration extension/)

          expected_request =
            stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: expired_resp)

          provider = InstanceProfileCredentialsProvider.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          assert_requested(expected_request, times: 1)

          # successive requests/credential gets don't result in more calls to imds
          provider.identity
          provider.identity
          provider.identity

          assert_requested(expected_request, times: 1)
        end

        it 'provides credentials after a read timeout during a refresh' do
          expect_any_instance_of(InstanceProfileCredentialsProvider).to receive(:warn)
            .at_least(:once)
            .with(/Attempting credential expiration extension/)

          expected_request =
            stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: near_expiration_resp)
            .to_raise(Timeout::Error)

          provider = InstanceProfileCredentialsProvider.new(options)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.account_id).to eq('120987654321')
          assert_requested(expected_request, times: 2)
        end
      end

      context 'instance profile service unreachable' do
        [
          Errno::EHOSTUNREACH,
          Errno::ECONNREFUSED,
          Errno::EHOSTDOWN,
          Errno::ENETUNREACH,
          SocketError,
          Timeout::Error
        ].each do |error_class|
          it "returns no credentials for #{error_class}" do
            stub_request(:put, ipv4_endpoint_token_path).to_return(status: 200, body: 'mytoken')
            stub_request(:get, ipv4_endpoint_creds_path).to_raise(error_class)

            provider = InstanceProfileCredentialsProvider.new(backoff: 0)
            creds = provider.identity
            expect(creds.access_key_id).to be(nil)
            expect(creds.secret_access_key).to be(nil)
            expect(creds.session_token).to be(nil)
            expect(creds.account_id).to be(nil)
            expect(provider.expiration).to be(nil)
          end
        end

        [400, 403].each do |error_code|
          it "returns no credentials for #{error_code} when fetching token" do
            stub_request(:put, ipv4_endpoint_token_path).to_return(status: error_code)
            provider = InstanceProfileCredentialsProvider.new(backoff: 0)
            creds = provider.identity
            expect(creds.access_key_id).to be(nil)
            expect(creds.secret_access_key).to be(nil)
            expect(creds.session_token).to be(nil)
            expect(creds.account_id).to be(nil)
            expect(provider.expiration).to be(nil)
          end
        end
      end
    end
  end
end
