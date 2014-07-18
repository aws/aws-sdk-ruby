require 'spec_helper'

module Aws
  module IAM
    describe Client do

      it 'forces the endpoint to iam.amazonaws.com despite region' do
        iam = Client.new(region: 'us-west-2', credentials: dummy_credentials)
        expect(iam.config.endpoint).to eq('https://iam.amazonaws.com')
      end

      it 'uses us-east-1 as the signing region' do
        iam = Client.new(region: 'us-west-2', credentials: dummy_credentials)
        expect(iam.config.sigv4_region).to eq('us-east-1')
      end

    end
  end
end
