# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe GlobalConfiguration do
        let(:sample_client) { ClientHelper.sample_client }
        let(:client_class) { sample_client.const_get(:Client) }
        let(:client) { client_class.new(stub_responses: true, endpoint: 'https://example.com') }

        before(:all) { GlobalConfiguration.add_identifier(:sampleclient) }
        after(:all) do
          GlobalConfiguration.identifiers.delete(:sampleclient)
          Aws::Core.config.clear
        end
        before { Aws::Core.config.clear }

        it 'can configure globally' do
          Aws::Core.config[:region] = 'us-west-2'
          expect(client.config.region).to eq('us-west-2')
        end

        it 'can configure per service' do
          Aws::Core.config[:sampleclient] = { region: 'us-west-2' }
          expect(client.config.region).to eq('us-west-2')
        end

        it 'raises when given invalid global config options' do
          Aws::Core.config[:force_path_style] = true
          expect { client }.to raise_error(ArgumentError, /invalid configuration option `:force_path_style'/)
        end

        it 'does not raise when given valid service specific config options' do
          plugin = Class.new(Smithy::Client::Plugin) do
            option(:service_option, default: 'default')
          end
          client_class.add_plugin(plugin)
          Aws::Core.config[:sampleclient] = { service_option: 'custom' }
          expect(client.config.service_option).to eq('custom')
        end

        it 'gives priority to constructor options' do
          Aws::Core.config[:region] = 'us-west-2'
          expect(client_class.new(region: 'us-east-1').config.region).to eq('us-east-1')
        end
      end
    end
  end
end
