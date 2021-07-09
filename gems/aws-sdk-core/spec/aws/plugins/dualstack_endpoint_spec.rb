# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe DualstackEndpoint do
      DualstackClient = ApiHelper.sample_service.const_get(:Client)

      let(:creds) { Aws::Credentials.new('akid', 'secret') }

      it 'defaults to false' do
        client = DualstackClient.new(region: 'us-west-2')
        expect(client.config.use_dualstack_endpoint).to eq false
      end

      it 'can be configured with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:use_dualstack_endpoint).and_return(true)
        client = DualstackClient.new(region: 'us-west-2')
        expect(client.config.use_dualstack_endpoint).to eq true
      end

      it 'can be configured using env variable with precedence' do
        ENV['AWS_USE_DUALSTACK_ENDPOINT'] = 'true'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:use_dualstack_endpoint).and_return(false)
        client = DualstackClient.new(region: 'us-west-2')
        expect(client.config.use_dualstack_endpoint).to eq true
      end

      it 'can be configure through code with precedence' do
        ENV['AWS_USE_DUALSTACK_ENDPOINT'] = 'true'
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:use_dualstack_endpoint).and_return(true)
        client = DualstackClient.new(
          region: 'us-west-2', use_dualstack_endpoint: false
        )
        expect(client.config.use_dualstack_endpoint).to eq false
      end
    end
  end
end
