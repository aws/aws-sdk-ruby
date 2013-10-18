require 'spec_helper'

module Aws
  describe IAM do

    it 'does not require a region' do
      iam = IAM.new(region: nil)
      expect(iam.config.region).to be(nil)
    end

    it 'uses us-east-1 as the signing region' do
      iam = IAM.new(region: 'us-west-2')
      expect(iam.config.sigv4_region).to eq('us-east-1')
    end

    it 'forces the endpoint to iam.amazonaws.com despite region' do
      iam = IAM.new(region: 'us-west-2')
      expect(iam.config.endpoint).to eq('iam.amazonaws.com')
    end

  end
end
