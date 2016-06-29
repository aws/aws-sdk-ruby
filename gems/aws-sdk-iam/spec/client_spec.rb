require_relative 'spec_helper'

module Aws
  module IAM
    describe Client do

      let(:credentials) { Aws::Credentials.new('akid', 'secret') }

      it 'forces the endpoint to iam.amazonaws.com despite region' do
        iam = Client.new(region: 'us-west-2', credentials: credentials)
        expect(iam.config.endpoint.to_s).to eq('https://iam.amazonaws.com')
      end

      it 'uses us-east-1 as the signing region' do
        iam = Client.new(region: 'us-west-2', credentials: credentials)
        expect(iam.config.sigv4_region).to eq('us-east-1')
      end

      it 'expands the endpoint correctly for gov-cloud' do
        iam = Client.new(region: 'us-gov-west-1', credentials: credentials)
        expect(iam.config.endpoint.to_s).to eq('https://iam.us-gov.amazonaws.com')
      end

      it 'uses the proper sigv4 signing name for gov-cloud' do
        iam = Client.new(region: 'us-gov-west-1', credentials: credentials)
        expect(iam.config.sigv4_region).to eq('us-gov-west-1')
      end

    end
  end
end
