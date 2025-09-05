# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe InstanceProfileCredentials do
      let(:path) { '/latest/meta-data/iam/security-credentials/' }
      let(:token_path) { '/latest/api/token' }
      let(:ipv4_endpoint) { 'http://169.254.169.254' }
      let(:ipv4_endpoint_token_path) { ipv4_endpoint + token_path }
      let(:ipv4_endpoint_creds_path) { ipv4_endpoint + path }

      before(:each) do
        allow_any_instance_of(InstanceProfileCredentials).to receive(:warn)
        allow(Kernel).to receive(:sleep)
      end

      context 'without instance metadata service present' do
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
            creds = InstanceProfileCredentials.new(backoff: 0).identity
            expect(creds.access_key_id).to be(nil)
            expect(creds.secret_access_key).to be(nil)
            expect(creds.session_token).to be(nil)
            expect(creds.expiration).to be(nil)
          end
        end

        [
          400,
          403
        ].each do |error_code|
          it "returns no credentials for #{error_code} when fetching token" do
            stub_request(:put, ipv4_endpoint_token_path).to_return(status: error_code)
            creds = InstanceProfileCredentials.new(backoff: 0).identity
            expect(creds.access_key_id).to be(nil)
            expect(creds.secret_access_key).to be(nil)
            expect(creds.session_token).to be(nil)
            expect(creds.expiration).to be(nil)
          end
        end
      end

      context 'with instance metadata service present' do
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

        it_behaves_like 'a refreshing credentials provider'

        it 'populates credentials from the instance profile' do
          creds = InstanceProfileCredentials.new(backoff: 0).identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
        end

        it 're-queries the metadata service when #refresh! is called and reuses cached token' do
          provider = InstanceProfileCredentials.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
          provider.send(:refresh)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.expiration.to_s).to eq(expiration2.to_s)
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
          provider = InstanceProfileCredentials.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
          # wait for token to expire
          sleep(1)
          provider.send(:refresh)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.expiration.to_s).to eq(expiration2.to_s)
          # ensure that another PUT request was made to retrieve new token
          assert_requested(stub_request(:put, ipv4_endpoint_token_path), times: 2)
          # ensure only one GET request was made to retrieve profile name the first time, cached value used after
          assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 1)
        end

        it 'uses ec2_instance_profile_name when given' do
          stub_request(:get, "#{ipv4_endpoint_creds_path}my-profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: resp)
          creds = InstanceProfileCredentials.new(ec2_instance_profile_name: 'my-profile-name', backoff: 0).identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
          # ensure no GET request was made to retrieve profile name
          assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 0)
        end

        it 'retries if the first request fails' do
          # TODO: IMDS 2.0 SEP tests when service returns 503, which may or may not be a valid response status.
          # Re evaluate test and corresponding behavior TODO in EC2Metadata.
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
          creds = InstanceProfileCredentials.new(backoff: 0).identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.expiration.to_s).to eq(expiration2.to_s)
        end

        it 'retries a default of 3 times when PUT returns retryable error' do
          # TODO: IMDS 2.0 SEP tests when service returns 503, which may or may not be a valid response status.
          # Re evaluate test and corresponding behavior TODO in EC2Metadata.
          stub_request(:put, ipv4_endpoint_token_path).to_return(status: 503)
          InstanceProfileCredentials.new(backoff: 0).identity
          assert_requested(stub_request(:put, ipv4_endpoint_token_path), times: 4)
        end

        it 'retries a default of 3 times when GET returns retryable error' do
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 503)
          InstanceProfileCredentials.new(backoff: 0).identity
          assert_requested(stub_request(:get, ipv4_endpoint_creds_path), times: 4)
        end

        it 'returns empty credentials when given an empty response' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: "profile-name\n")
          stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 200, body: '{}')
          creds = InstanceProfileCredentials.new.identity
          expect(creds.access_key_id).to be(nil)
          expect(creds.secret_access_key).to be(nil)
          expect(creds.session_token).to be(nil)
          expect(creds.expiration).to be(nil)
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
            InstanceProfileCredentials.new(backoff: 0).identity
          end.to raise_error(InstanceProfileCredentials::MetadataParserError)
        end

        it 'warns when instance profile name metadata was not found' do
          stub_request(:get, ipv4_endpoint_creds_path)
            .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
            .to_return(status: 404)
          provider = InstanceProfileCredentials.new
          expect(provider).to receive(:warn).with(/Error retrieving instance profile credentials/)
          creds = provider.identity
          expect(creds.access_key_id).to be(nil)
          expect(creds.secret_access_key).to be(nil)
          expect(creds.session_token).to be(nil)
          expect(creds.expiration).to be(nil)
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
            expect_any_instance_of(InstanceProfileCredentials).to receive(:warn)
              .at_least(:once)
              .with(/Attempting credential expiration extension/)

            expected_request =
              stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
              .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
              .to_return(status: 200, body: expired_resp)

            provider = InstanceProfileCredentials.new(backoff: 0)
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
            expect_any_instance_of(InstanceProfileCredentials).to receive(:warn)
              .at_least(:once)
              .with(/Attempting credential expiration extension/)

            expected_request =
              stub_request(:get, "#{ipv4_endpoint_creds_path}profile-name")
              .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
              .to_return(status: 200, body: near_expiration_resp)
              .to_raise(Timeout::Error)

            provider = InstanceProfileCredentials.new(backoff: 0, retries: 0)

            provider.identity
            creds = provider.identity

            expect(creds.access_key_id).to eq('akid-2')
            assert_requested(expected_request, times: 2)
          end
        end
      end
    end
  end
end
