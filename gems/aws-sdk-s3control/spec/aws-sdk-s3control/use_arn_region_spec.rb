# frozen_string_literal: true

require_relative '../../../aws-sdk-core/spec/spec_helper'

require_relative '../spec_helper'

module Aws
  module S3Control
    describe Client do
      it 's3_use_arn_region is true by default' do
        client = Client.new(stub_responses: true)
        expect(client.config.s3_use_arn_region).to be(true)
      end

      it 's3_use_arn_region can be configured using shared config' do
        shared_config = <<~CONFIG
          [profile default]
          s3_use_arn_region = false
        CONFIG
        mock_shared_config(shared_config)
        client = Client.new(stub_responses: true)
        expect(client.config.s3_use_arn_region).to be(false)
      end

      it 's3_use_arn_region can be configured using ENV with precedence over shared config' do
        shared_config = <<~CONFIG
          [profile default]
          s3_use_arn_region = true
        CONFIG
        mock_shared_config(shared_config)
        ENV['AWS_S3_USE_ARN_REGION'] = 'false'
        client = Client.new(stub_responses: true)
        expect(client.config.s3_use_arn_region).to be(false)
      end

      it 's3_use_arn_region can be configured in code with precedence over ENV and shared config' do
        shared_config = <<~CONFIG
          [profile default]
          s3_use_arn_region = true
        CONFIG
        mock_shared_config(shared_config)
        ENV['AWS_S3_USE_ARN_REGION'] = 'true'
        client = Client.new(stub_responses: true, s3_use_arn_region: false)
        expect(client.config.s3_use_arn_region).to be(false)
      end

      it 'validates s3_use_arn_region in code' do
        expect { Client.new(stub_responses: true, s3_use_arn_region: 'peccy') }
          .to raise_error(ArgumentError, /Expected :s3_use_arn_region to be true or false/)
      end

      it 'validates s3_use_arn_region from shared config' do
        shared_config = <<~CONFIG
          [profile default]
          s3_use_arn_region = peccy
        CONFIG
        mock_shared_config(shared_config)
        expect { Client.new(stub_responses: true) }
          .to raise_error(ArgumentError, /`s3_use_arn_region` profile config/)
      end

      it 'validates s3_use_arn_region from ENV' do
        ENV['AWS_S3_USE_ARN_REGION'] = 'peccy'
        expect { Client.new(stub_responses: true) }
          .to raise_error(ArgumentError, /`AWS_S3_USE_ARN_REGION` environment variable/)
      end
    end
  end
end
