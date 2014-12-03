require 'spec_helper'

module Aws
  module STS
    describe Client do

      it 'constructs the proper endpoint in gov-cloud' do
        client = Client.new(region:'us-gov-west-1', credentials: Credentials.new('akid', 'secret'))
        expect(client.config.endpoint.to_s).to eq('https://sts.us-gov-west-1.amazonaws.com')
      end

    end
  end
end
