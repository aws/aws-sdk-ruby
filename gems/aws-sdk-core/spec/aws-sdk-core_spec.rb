# frozen_string_literal: true

require_relative 'spec_helper'

describe Aws do
  describe '.config' do
    it 'exposes global configuration from the customer-facing namespace' do
      described_class.config = { region: 'us-west-2' }

      expect(described_class.config).to eq(region: 'us-west-2')
      expect(Aws::Core).not_to respond_to(:config)
    end
  end

  describe 'customer-facing constants' do
    it 'exposes credentials and credential providers under Aws' do
      expect(Aws::Credentials.name).to eq('Aws::Credentials')
      expect(Aws::StaticCredentialsProvider.name).to eq('Aws::StaticCredentialsProvider')
      expect(Aws::AssumeRoleCredentialsProvider.name).to eq('Aws::AssumeRoleCredentialsProvider')
    end

    it 'exposes public utilities under Aws' do
      expect(Aws::ARN.name).to eq('Aws::ARN')
      expect(Aws::ARNParser.name).to eq('Aws::ARNParser')
      expect(Aws::EC2Metadata.name).to eq('Aws::EC2Metadata')
      expect(Aws::SharedConfig.name).to eq('Aws::SharedConfig')
      expect(Aws).to respond_to(:shared_config)
    end

    it 'keeps runtime implementation details under Aws::Core' do
      expect(Aws::Core::QueryExtension).to be_a(Module)
      expect(Aws.const_defined?(:QueryExtension, false)).to be(false)
      expect(Aws::Core.const_defined?(:Credentials, false)).to be(false)
    end
  end
end
