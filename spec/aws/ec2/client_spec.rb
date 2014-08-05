require 'spec_helper'

module Aws
  module EC2
    describe Client do

      let(:credentials) { Aws::Credentials.new('akid', 'secret') }

      it 'expands the endpoint correctly for gov-cloud' do
        ec2 = Client.new(region: 'us-gov-west-1', credentials: credentials)
        expect(ec2.config.endpoint.to_s).to eq('https://ec2.us-gov-west-1.amazonaws.com')
      end

    end
  end
end
