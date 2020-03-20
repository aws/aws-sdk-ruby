require 'spec_helper'

module Aws
  describe "Credential Resolution Chain" do

    let(:mock_credential_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    }

    let(:mock_config_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_config'))
    }

    let(:imds_url) {
      'http://169.254.169.254/latest/meta-data/iam/security-credentials/'
    }

    let(:imds_token_url) {
      'http://169.254.169.254/latest/api/token'
    }

    describe "default behavior" do
      before(:each) do
        stub_const('ENV', {})
        # AWS_SDK_CONFIG_OPT_OUT not present
        Aws.shared_config.fresh(
          config_enabled: true,
          credentials_path: mock_credential_file,
          config_path: mock_config_file
        )
      end

      it 'prefers direct credentials above other sources' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = Aws::S3::Client.new(
          access_key_id: "ACCESS_DIRECT",
          secret_access_key: "SECRET_DIRECT",
          profile: "fooprofile",
          region: "us-east-1"
        )
        expect(client.config.credentials.access_key_id).to eq("ACCESS_DIRECT")
      end

      it 'prefers ENV credentials over assume role and shared config' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = Aws::S3::Client.new(profile: "assumerole_sc", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("AKID_ENV_STUB")
      end

      it 'prefers assume role over shared config' do
        assume_role_stub(
          "arn:aws:iam:123456789012:role/bar",
          "ACCESS_KEY_1", # from 'fooprofile'
          "AR_AKID",
          "AR_SECRET",
          "AR_TOKEN"
        )
        client = Aws::S3::Client.new(profile: "ar_plus_creds", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("AR_AKID")
      end

      it 'prefers shared credential file static credentials over shared config' do
        client = Aws::S3::Client.new(profile: "credentials_first", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("ACCESS_KEY_CRD")
      end

      it 'will source static credentials from shared config after shared credentials' do
        client = Aws::S3::Client.new(profile: "incomplete_cred", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("ACCESS_KEY_SC1")
      end

      it 'attempts to fetch metadata credentials last' do
        stub_request(:put, imds_token_url)
          .to_return(
            :status => 200,
            :body => "my-token\n",
            :headers => {"x-aws-ec2-metadata-token-ttl-seconds" => "21600"}
          )
        stub_request(:get, imds_url)
          .with(:headers => {"x-aws-ec2-metadata-token" => "my-token"})
          .to_return(:status => 200, :body => "profile-name\n")
        stub_request(:get, "#{imds_url}profile-name")
          .with(:headers => {"x-aws-ec2-metadata-token" => "my-token"})
          .to_return(:status => 200, :body => <<-JSON.strip)
{
  "Code" : "Success",
  "LastUpdated" : "2013-11-22T20:03:48Z",
  "Type" : "AWS-HMAC",
  "AccessKeyId" : "akid-md",
  "SecretAccessKey" : "secret-md",
  "Token" : "session-token-md",
  "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
JSON
        client = Aws::S3::Client.new(profile: "nonexistant", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("akid-md")
      end

      describe 'Assume Role Resolution' do
        it 'will not assume a role without a source present' do
          expect {
            Aws::S3::Client.new(profile: "ar_no_src", region: "us-east-1")
          }.to raise_error(Errors::NoSourceProfileError)
        end

        it 'will explicitly raise if source_profile is present but invalid' do
          expect {
            Aws::S3::Client.new(profile: "ar_bad_src", region: "us-east-1")
          }.to raise_error(Errors::NoSourceProfileError)
        end

        it 'will assume a role from shared credentials before shared config' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/bar",
            "ACCESS_KEY_1", # from 'fooprofile'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = Aws::S3::Client.new(profile: "assumerole_sc", region: "us-east-1")
          expect(client.config.credentials.credentials.access_key_id).to eq("AR_AKID")
        end

        it 'will then try to assume a role from shared config' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/bar",
            "ACCESS_KEY_ARPC", # from 'ar_from_self'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = Aws::S3::Client.new(profile: "ar_from_self", region: "us-east-1")
          expect(client.config.credentials.credentials.access_key_id).to eq("AR_AKID")
        end

        it 'will assume a role from config using source credentials in shared credentials' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/foo",
            "ACCESS_KEY_1", # from 'creds_from_sc'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = Aws::S3::Client.new(profile: "creds_from_sc", region: "us-east-1")
          expect(client.config.credentials.credentials.access_key_id).to eq("AR_AKID")
        end
      end

    end

    describe "AWS_SDK_CONFIG_OPT_OUT set" do
      before(:each) do
        stub_const('ENV', {})
        Aws.shared_config.fresh(
          config_enabled: false,
          credentials_path: mock_credential_file,
          # The config file exists but should not be used.
          config_path: mock_config_file
        )
      end

      it 'prefers direct credentials above other sources' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = Aws::S3::Client.new(
          access_key_id: "ACCESS_DIRECT",
          secret_access_key: "SECRET_DIRECT",
          profile: "fooprofile",
          region: "us-east-1"
        )
        expect(client.config.credentials.credentials.access_key_id).to eq("ACCESS_DIRECT")
      end

      it 'prefers ENV credentials over shared config' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = Aws::S3::Client.new(profile: "fooprofile", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("AKID_ENV_STUB")
      end

      it 'will not load credentials from shared config' do
        client = Aws::S3::Client.new(profile: "creds_from_cfg", region: "us-east-1")
        expect(client.config.credentials).to eq(nil)
      end

      it 'will not attempt to assume a role' do
        client = Aws::S3::Client.new(profile: "assumerole_sc", region: "us-east-1")
        expect(client.config.credentials).to eq(nil)
      end

      it 'attempts to fetch metadata credentials last' do
        stub_request(:put, imds_token_url)
          .to_return(
            :status => 200,
            :body => "my-token\n",
            :headers => {"x-aws-ec2-metadata-token-ttl-seconds" => "21600"}
          )
        stub_request(:get, imds_url)
          .with(:headers => {"x-aws-ec2-metadata-token" => "my-token"})
          .to_return(:status => 200, :body => "profile-name\n")
        stub_request(:get, "#{imds_url}profile-name")
          .with(:headers => {"x-aws-ec2-metadata-token" => "my-token"})
          .to_return(:status => 200, :body => <<-JSON.strip)
{
  "Code" : "Success",
  "LastUpdated" : "2013-11-22T20:03:48Z",
  "Type" : "AWS-HMAC",
  "AccessKeyId" : "akid-md",
  "SecretAccessKey" : "secret-md",
  "Token" : "session-token-md",
  "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
JSON
        client = Aws::S3::Client.new(profile: "nonexistant", region: "us-east-1")
        expect(client.config.credentials.credentials.access_key_id).to eq("akid-md")
      end
    end

    def assume_role_stub(role_arn, input_access_key, access_key, secret_key, token)
      stub_request(:post, "https://sts.us-east-1.amazonaws.com/").
        with(headers: { "authorization" => /Credential=#{input_access_key}/ }).
        to_return(body: <<-RESP)
<AssumeRoleResponse xmlns="https://sts.amazonaws.com/doc/2011-06-15/">
  <AssumeRoleResult>
    <AssumedRoleUser>
      <Arn>#{role_arn}</Arn>
      <AssumedRoleId>ASSUMEROLEID:session</AssumedRoleId>
    </AssumedRoleUser>
    <Credentials>
      <AccessKeyId>#{access_key}</AccessKeyId>
      <SecretAccessKey>#{secret_key}</SecretAccessKey>
      <SessionToken>#{token}</SessionToken>
      <Expiration>#{(Time.now + 3600).utc.iso8601}</Expiration>
    </Credentials>
  </AssumeRoleResult>
  <ResponseMetadata>
    <RequestId>MyStubRequest</RequestId>
  </ResponseMetadata>
</AssumeRoleResponse>
        RESP
    end
  end
end
