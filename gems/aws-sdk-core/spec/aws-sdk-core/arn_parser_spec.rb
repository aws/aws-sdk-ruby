# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ARNParser do
      describe '.parse' do
        it 'parses a standard ARN string into an ARN object' do
          arn_str = 'arn:aws:s3:us-west-2:12345678910:foo/bar'
          arn = ARNParser.parse(arn_str)

          expect(arn).to be_a(ARN)
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('s3')
          expect(arn.region).to eq('us-west-2')
          expect(arn.account_id).to eq('12345678910')
          expect(arn.resource).to eq('foo/bar')
        end

        it 'parses an ARN with empty region and account' do
          arn_str = 'arn:aws:s3:::bucket/key'
          arn = ARNParser.parse(arn_str)

          expect(arn).to be_a(ARN)
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('s3')
          expect(arn.region).to eq('')
          expect(arn.account_id).to eq('')
          expect(arn.resource).to eq('bucket/key')
        end

        it 'parses ARNs from different partitions' do
          arn_str = 'arn:aws-cn:s3:cn-north-1:12345678910:bucket/key'
          arn = ARNParser.parse(arn_str)

          expect(arn).to be_a(ARN)
          expect(arn.partition).to eq('aws-cn')
          expect(arn.service).to eq('s3')
          expect(arn.region).to eq('cn-north-1')
          expect(arn.account_id).to eq('12345678910')
          expect(arn.resource).to eq('bucket/key')
        end

        it 'parses ARNs with complex resources' do
          arn_str = 'arn:aws:iam::123456789012:role/service-role/AmazonSageMaker-ExecutionRole'
          arn = ARNParser.parse(arn_str)

          expect(arn).to be_a(ARN)
          expect(arn.partition).to eq('aws')
          expect(arn.service).to eq('iam')
          expect(arn.region).to eq('')
          expect(arn.account_id).to eq('123456789012')
          expect(arn.resource).to eq('role/service-role/AmazonSageMaker-ExecutionRole')
        end

        it 'raises InvalidARNError when ARN has fewer than 6 parts' do
          arn_str = 'arn:aws:s3:us-west-2:12345'

          expect do
            ARNParser.parse(arn_str)
          end.to raise_error(ARNParser::InvalidARNError)
        end

        it 'raises InvalidARNError when ARN string is nil' do
          expect do
            ARNParser.parse(nil)
          end.to raise_error(ARNParser::InvalidARNError)
        end

        it 'raises InvalidARNError when ARN is not valid' do
          # Missing service
          arn_str = 'arn:aws::us-west-2:12345678910:foo/bar'

          expect do
            ARNParser.parse(arn_str)
          end.to raise_error(ARNParser::InvalidARNError)

          # Missing partition
          arn_str = 'arn::s3:us-west-2:12345678910:foo/bar'

          expect do
            ARNParser.parse(arn_str)
          end.to raise_error(ARNParser::InvalidARNError)

          # Missing resource
          arn_str = 'arn:aws:s3:us-west-2:12345678910:'

          expect do
            ARNParser.parse(arn_str)
          end.to raise_error(ARNParser::InvalidARNError)
        end
      end

      describe '.arn?' do
        it 'returns true for valid ARN strings' do
          expect(ARNParser.arn?('arn:aws:s3:us-west-2:12345678910:foo/bar')).to be true
          expect(ARNParser.arn?('arn:aws:s3:::bucket')).to be true
          expect(ARNParser.arn?('arn:aws:iam::123456789012:role/service-role/MyRole')).to be true
        end

        it 'returns false for strings that do not start with "arn:"' do
          expect(ARNParser.arn?('aws:s3:us-west-2:12345678910:foo/bar')).to be false
          expect(ARNParser.arn?('not-an-arn')).to be false
        end

        it 'returns false for strings with fewer than 6 parts' do
          expect(ARNParser.arn?('arn:aws:s3:us-west')).to be false
          expect(ARNParser.arn?('arn:aws:s3:us')).to be false
        end

        it 'returns false for nil input' do
          expect(ARNParser.arn?(nil)).to be false
        end
      end

      describe 'integration between ARNParser and ARN' do
        it 'round trips from string to ARN and back' do
          original_str = 'arn:aws:s3:us-west-2:12345678910:foo/bar'
          arn = ARNParser.parse(original_str)
          expect(arn.to_s).to eq(original_str)
        end
      end
    end
  end
end
