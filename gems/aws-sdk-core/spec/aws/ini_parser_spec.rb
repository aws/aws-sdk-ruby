# frozen_string_literal: true

require 'spec_helper'

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
      FILE
    }

    it 'can parse basic attributes' do
      parsed = IniParser.ini_parse(mock_config)
      expect(parsed['default']['aws_access_key_id']).to eq("AKIABLAHBLAHBLAH")
      expect(parsed['other']['region']).to eq("ap-northeast-1")
    end

    it 'can parse and strip the "profile" prefix from profile names' do
      parsed = IniParser.ini_parse(mock_config)
      expect(parsed['third']['region']).to eq("sa-east-1")
    end

    it 'can parse nested configuration' do
      parsed = IniParser.ini_parse(mock_config)
      expect(parsed['default']['s3']['region']).to eq("us-west-2")
      expect(parsed['other']['s3']['region']).to eq("ap-southeast-1")
    end

  end
end
