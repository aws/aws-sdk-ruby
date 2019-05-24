require 'spec_helper'

module Aws
  describe ECSCredentials do

    let(:path) { '/latest/credentials?id=foobarbaz' }

    describe 'without instance metadata service present' do

      [
        Errno::EHOSTUNREACH,
        Errno::ECONNREFUSED,
        SocketError,
        Timeout::Error,
      ].each do |error_class|
        it "returns no credentials for #{error_class}" do
          stub_request(:get, "http://169.254.170.2#{path}").to_raise(error_class)
          expect(ECSCredentials.new(credential_path: path, backoff:0).set?).to be(false)
        end
      end

    end

    describe 'with ECS credential service present' do

      before(:each) do
        stub_const('ENV', {
          "AWS_CONTAINER_CREDENTIALS_RELATIVE_URI" => path
        })
      end

      let(:expiration) { Time.now.utc + 3600 }
      let(:expiration2) { expiration + 3600 }

      let(:resp) { <<-JSON.strip }
{
  "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
  "AccessKeyId" : "akid",
  "SecretAccessKey" : "secret",
  "Token" : "session-token",
  "Expiration" : "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
      JSON

      let(:resp2) { <<-JSON.strip }
{
  "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
  "AccessKeyId" : "akid-2",
  "SecretAccessKey" : "secret-2",
  "Token" : "session-token-2",
  "Expiration" : "#{(expiration2).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
      JSON

      before(:each) do
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => resp).
          to_return(:status => 200, :body => resp2)
      end

      it 'populates credentials from the instance profile' do
        c = ECSCredentials.new(backoff:0)
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
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => resp2)
        c = ECSCredentials.new(backoff:0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries if get profile response is invalid JSON' do
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => ' ').
          to_return(:status => 200, :body => '').
          to_return(:status => 200, :body => '{').
          to_return(:status => 200, :body => resp2)
        c = ECSCredentials.new(backoff:0)
        expect(c.credentials.access_key_id).to eq('akid-2')
        expect(c.credentials.secret_access_key).to eq('secret-2')
        expect(c.credentials.session_token).to eq('session-token-2')
        expect(c.expiration.to_s).to eq(expiration2.to_s)
      end

      it 'retries invalid JSON exactly 3 times' do
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => '').
          to_return(:status => 200, :body => ' ').
          to_return(:status => 200, :body => '{').
          to_return(:status => 200, :body => ' ')
        expect {
          ECSCredentials.new(backoff:0)
        }.to raise_error(
          Aws::Errors::MetadataParserError,
          'Failed to parse metadata service response.'
        )
      end

      it 'retries errors parsing expiration time 3 times' do
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => '{ "Expiration": "Expiration" }').
          to_return(:status => 200, :body => '{ "Expiration": "Expiration" }').
          to_return(:status => 200, :body => '{ "Expiration": "Expiration" }').
          to_return(:status => 200, :body => '{ "Expiration": "Expiration" }')
        expect {
          ECSCredentials.new(backoff:0)
        }.to raise_error(ArgumentError)
      end

      describe 'auto refreshing' do

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

      describe 'failure cases' do

        let(:resp) { '{}' }

        it 'given an empty response, entry credentials are returned' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, "http://169.254.170.2#{path}").
            to_return(:status => 200, :body => resp)
          c = ECSCredentials.new
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
        stub_const('ENV', {
          "AWS_CONTAINER_CREDENTIALS_RELATIVE_URI" => path
        })
      end

      it 'defaults to 0' do
        stub_request(:get, "http://169.254.170.2#{path}").to_raise(SocketError)
        expect(ECSCredentials.new(backoff:0).retries).to be(5)
      end

      it 'keeps trying "retries" times, with exponential backoff' do
        expected_request = stub_request(:get, "http://169.254.170.2#{path}").
          to_raise(Errno::ECONNREFUSED)
        expect(Kernel).to receive(:sleep).with(1)
        expect(Kernel).to receive(:sleep).with(2)
        expect(Kernel).to receive(:sleep).with(4)
        ECSCredentials.new(
          backoff: lambda{|n| Kernel.sleep(2 ** n ) },
          retries:3
        )
        assert_requested(expected_request, times:4)
      end

    end
  end
end
