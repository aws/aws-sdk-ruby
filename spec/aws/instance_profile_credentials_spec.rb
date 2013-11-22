require 'spec_helper'

module Aws
  describe InstanceProfileCredentials do

    let(:path) { '/latest/meta-data/iam/security-credentials/' }

    describe 'without instance metadata service present' do

      [
        Errno::EHOSTUNREACH,
        Errno::ECONNREFUSED,
        SocketError,
        Timeout::Error,
      ].each do |error_class|
        it "returns no credentials for #{error_class}" do
          stub_request(:get, "http://169.254.169.254#{path}").to_raise(error_class)
          expect(InstanceProfileCredentials.new.set?).to be(false)
        end
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
  "Expiration" : "#{(expiration2).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
      JSON

      before(:each) do
        stub_request(:get, "http://169.254.169.254#{path}").
          to_return(:status => 200, :body => "profile-name\n")
        stub_request(:get, "http://169.254.169.254#{path}profile-name").
          to_return(:status => 200, :body => resp).
          to_return(:status => 200, :body => resp2)
      end

      it 'populates credentials from the instance profile' do
        c = InstanceProfileCredentials.new
        expect(c.access_key_id).to eq('akid')
        expect(c.secret_access_key).to eq('secret')
        expect(c.session_token).to eq('session-token')
        expect(c.expiration.to_s).to eq(expiration.to_s)
      end

      it 're-queries the metadata service when #refresh! is called' do
        c = InstanceProfileCredentials.new
        c.refresh!
        expect(c.access_key_id).to eq('akid-2')
        expect(c.secret_access_key).to eq('secret-2')
        expect(c.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      describe 'auto refreshing' do

        # expire in 4 minutes
        let(:expiration) { Time.now.utc + 299 }

        it 'auto-refreshes within 5 minutes from expiration' do
          c = InstanceProfileCredentials.new
          expect(c.access_key_id).to eq('akid-2')
          expect(c.secret_access_key).to eq('secret-2')
          expect(c.session_token).to eq('session-token-2')
          expect(c.expiration.to_s).to eq(expiration2.to_s)
        end

      end
    end
  end
end
