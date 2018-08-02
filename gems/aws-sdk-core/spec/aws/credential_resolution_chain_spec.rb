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
        client = ApiHelper.sample_rest_xml::Client.new(
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
        client = ApiHelper.sample_rest_xml::Client.new(profile: "assumerole_sc", region: "us-east-1")
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
        client = ApiHelper.sample_rest_xml::Client.new(profile: "ar_plus_creds", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("AR_AKID")
      end

      it 'prefers shared credential file static credentials over shared config' do
        client = ApiHelper.sample_rest_xml::Client.new(profile: "credentials_first", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("ACCESS_KEY_CRD")
      end

      it 'will source static credentials from shared config after shared credentials' do
        client = ApiHelper.sample_rest_xml::Client.new(profile: "incomplete_cred", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("ACCESS_KEY_SC1")
      end

      it 'prefers process credentials over metadata credentials' do
        client = ApiHelper.sample_rest_xml::Client.new(profile: "creds_from_process", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("AK_PROC1")
      end

      it 'prefers direct credentials over process credentials' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = ApiHelper.sample_rest_xml::Client.new(profile: "creds_from_process", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("AKID_ENV_STUB")
      end

      it 'attempts to fetch metadata credentials last' do
        stub_request(
          :get,
          "http://169.254.169.254/latest/meta-data/iam/security-credentials/"
        ).to_return(:status => 200, :body => "profile-name\n")
        stub_request(
          :get,
          "http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name"
        ).to_return(:status => 200, :body => <<-JSON.strip)
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
        client = ApiHelper.sample_rest_xml::Client.new(profile: "nonexistant", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("akid-md")
      end

      describe 'Assume Role Resolution' do
        it 'will not assume a role without a source present' do
          expect {
            ApiHelper.sample_rest_xml::Client.new(profile: "ar_no_src", region: "us-east-1")
          }.to raise_error(Errors::NoSourceProfileError)
        end

        it 'will explicitly raise if source_profile is present but invalid' do
          expect {
            ApiHelper.sample_rest_xml::Client.new(profile: "ar_bad_src", region: "us-east-1")
          }.to raise_error(Errors::NoSourceProfileError)
        end

        it 'will explicitly raise if credential_source is present but invalid' do
          expect {
            ApiHelper.sample_rest_xml::Client.new(profile: "ar_bad_csrc", region: "us-east-1")
          }.to raise_error(Errors::InvalidCredentialSourceError)
        end

        it 'will explicitly raise if source_profile and credential_source both present' do
          expect {
            ApiHelper.sample_rest_xml::Client.new(profile: "ar_src_conflict", region: "us-east-1")
          }.to raise_error(Errors::CredentialSourceConflictError)
        end

        it 'will assume a role from shared credentials before shared config' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/bar",
            "ACCESS_KEY_1", # from 'fooprofile'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = ApiHelper.sample_rest_xml::Client.new(profile: "assumerole_sc", region: "us-east-1")
          expect(client.config.credentials.access_key_id).to eq("AR_AKID")
        end

        it 'will then try to assume a role from shared config' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/bar",
            "ACCESS_KEY_ARPC", # from 'ar_from_self'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = ApiHelper.sample_rest_xml::Client.new(profile: "ar_from_self", region: "us-east-1")
          expect(client.config.credentials.access_key_id).to eq("AR_AKID")
        end

        it 'will assume a role from config using source credentials in shared credentials' do
          assume_role_stub(
            "arn:aws:iam:123456789012:role/foo",
            "ACCESS_KEY_1", # from 'creds_from_sc'
            "AR_AKID",
            "AR_SECRET",
            "AR_TOKEN"
          )
          client = ApiHelper.sample_rest_xml::Client.new(profile: "creds_from_sc", region: "us-east-1")
          expect(client.config.credentials.access_key_id).to eq("AR_AKID")
        end
      end

      it 'can assume a role with EC2 Instance Metadata as a source' do
        profile = "ar_ec2_src"
        resp = <<-JSON.strip
{
  "Code" : "Success",
  "LastUpdated" : "2013-11-22T20:03:48Z",
  "Type" : "AWS-HMAC",
  "AccessKeyId" : "ACCESS_KEY_EC2",
  "SecretAccessKey" : "secret",
  "Token" : "session-token",
  "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
        JSON
        assume_role_stub(
          "arn:aws:iam:123456789012:role/foo",
          "ACCESS_KEY_EC2",
          "AR_AKID",
          "AR_SECRET",
          "AR_TOKEN"
        )
        stub_request(:get, "http://169.254.169.254/latest/meta-data/iam/security-credentials/").
          to_return(:status => 200, :body => "profile-name\n")
        stub_request(:get, "http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name").
          to_return(:status => 200, :body => resp)
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: "us-east-1"
        )
        expect(client.config.credentials.access_key_id).to eq("AR_AKID")
      end

      it 'can assume a role with ECS Credentials as a source' do
        profile = "ar_ecs_src"
        path = "/latest/credentials?id=foobarbaz"
        resp = <<-JSON.strip
{
  "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
  "AccessKeyId" : "ACCESS_KEY_ECS",
  "SecretAccessKey" : "secret",
  "Token" : "session-token",
  "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
}
        JSON
        stub_const('ENV', {
          "AWS_CONTAINER_CREDENTIALS_RELATIVE_URI" => path
        })
        stub_request(:get, "http://169.254.170.2#{path}").
          to_return(:status => 200, :body => resp)
        assume_role_stub(
          "arn:aws:iam:123456789012:role/foo",
          "ACCESS_KEY_ECS",
          "AR_AKID",
          "AR_SECRET",
          "AR_TOKEN"
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: "us-east-1"
        )
        expect(client.config.credentials.access_key_id).to eq("AR_AKID")
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
        client = ApiHelper.sample_rest_xml::Client.new(
          access_key_id: "ACCESS_DIRECT",
          secret_access_key: "SECRET_DIRECT",
          profile: "fooprofile",
          region: "us-east-1"
        )
        expect(client.config.credentials.access_key_id).to eq("ACCESS_DIRECT")
      end

      it 'prefers ENV credentials over shared config' do
        stub_const('ENV', {
          "AWS_ACCESS_KEY_ID" => "AKID_ENV_STUB",
          "AWS_SECRET_ACCESS_KEY" => "SECRET_ENV_STUB"
        })
        client = ApiHelper.sample_rest_xml::Client.new(profile: "fooprofile", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("AKID_ENV_STUB")
      end

      it 'will not load credentials from shared config' do
        client = ApiHelper.sample_rest_xml::Client.new(profile: "creds_from_cfg", region: "us-east-1")
        expect(client.config.credentials).to eq(nil)
      end

      it 'will not attempt to assume a role' do
        client = ApiHelper.sample_rest_xml::Client.new(profile: "assumerole_sc", region: "us-east-1")
        expect(client.config.credentials).to eq(nil)
      end

      it 'attempts to fetch metadata credentials last' do
        stub_request(
          :get,
          "http://169.254.169.254/latest/meta-data/iam/security-credentials/"
        ).to_return(:status => 200, :body => "profile-name\n")
        stub_request(
          :get,
          "http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name"
        ).to_return(:status => 200, :body => <<-JSON.strip)
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
        client = ApiHelper.sample_rest_xml::Client.new(profile: "nonexistant", region: "us-east-1")
        expect(client.config.credentials.access_key_id).to eq("akid-md")
      end
    end

    def assume_role_stub(role_arn, input_access_key, access_key, secret_key, token)
      stub_request(:post, "https://sts.amazonaws.com/").
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
