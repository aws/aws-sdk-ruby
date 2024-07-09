# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe IniParser do
    let(:mock_config) {
      <<-FILE
[default]
aws_access_key_id = AKIABLAHBLAHBLAH
aws_secret_access_key = secretSECRET+secret/SECRET
region = us-east-1
s3 =
   region = us-west-2
ec2 =
   region = us-west-1

[other]
aws_access_key_id = AKIAFOOBARFOOBAR
aws_secret_access_key = fooBAR+foo/BAR
region = ap-northeast-1
rds =
   region = ap-northeast-2
s3 =
   region = ap-southeast-1

[profile third]
region = sa-east-1

[sso-session dev]
sso_region = us-east-1

[sso-session 'profile with spaces']
sso_region = us-east-1

[services test-services]
s3 =
   endpoint_url = https://localhost:8000

[profile blank-property]
aws_session_token = 
s3 = 
   region = ap-southeast-1
   blank_sub_property = 

      FILE
    }

    let(:parsed) { IniParser.ini_parse(mock_config) }

    it 'can parse basic attributes' do
      expect(parsed['default']['aws_access_key_id']).to eq("AKIABLAHBLAHBLAH")
      expect(parsed['other']['region']).to eq("ap-northeast-1")
    end

    it 'can parse and strip the "profile" prefix from profile names' do
      expect(parsed['third']['region']).to eq("sa-east-1")
    end

    it 'can parse nested configuration' do
      expect(parsed['default']['s3']['region']).to eq("us-west-2")
      expect(parsed['other']['s3']['region']).to eq("ap-southeast-1")
    end

    it 'can parse sso-session sections' do
      expect(parsed['sso-session dev']['sso_region']).to eq('us-east-1')
    end

    it 'can parse services sections' do
      expect(parsed['services test-services']['s3']['endpoint_url']).to eq('https://localhost:8000')
    end

    it 'can parse blank properties mixed with nested configurations with spaces' do
      expect(parsed['blank-property']['aws_session_token']).to eq(' ')
      expect(parsed['blank-property']['s3']['region']).to eq('ap-southeast-1')
      expect(parsed['blank-property']['s3']['blank_sub_property']).to eq(' ')
    end
  end
end
