require_relative '../spec_helper'

module Aws
  describe InstanceProfileCredentials do
    let(:path) { '/latest/meta-data/iam/security-credentials/' }

    let(:token_path) { '/latest/api/token' }

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

      it 'defaults to 0' do
        expect(InstanceProfileCredentials.new(backoff: 0).retries).to be(5)
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
  end
end
