require 'spec_helper'

module Aws
  module Plugins
    describe SignatureV4 do

      let(:plugin) { SignatureV4.new }

      let(:api) {
        api = Seahorse::Model::Api.new
        api.metadata['endpoint_prefix'] = 'svc-name'
        api
      }

      let(:config) {
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:endpoint, 'svc-name.us-west-2.amazonaws.com')
        cfg.add_option(:api, api)
        cfg.add_option(:region)
        cfg
      }

      describe 'sigv4 signing name' do

        it 'accepts a sigv4 signing name configuration option' do
          plugin.add_options(config)
          expect(config.build!(sigv4_name: 'name').sigv4_name).to eq('name')
        end

        it 'defaults the sigv4 name to the endpoint prefix' do
          plugin.add_options(config)
          expect(config.build!.sigv4_name).to eq('svc-name')
        end

        it 'prefers the signing_name metdata to endpoint_prefix' do
          api.metadata['signing_name'] = 'signing-name'
          plugin.add_options(config)
          expect(config.build!.sigv4_name).to eq('signing-name')
        end

      end

      describe 'sigv4 signing region' do

        it 'extracts the region from standard endpoints' do
          plugin.add_options(config)
          expect(config.build!.sigv4_region).to eq('us-west-2')
        end

        it 'defaults to us-east-1 for global endpoints' do
          plugin.add_options(config)
          cfg = config.build!(endpoint: 'svc-name.amazonaws.com')
          expect(cfg.sigv4_region).to eq('us-east-1')
        end

        it 'defaults to configured region if it can not be extract' do
          plugin.add_options(config)
          cfg = config.build!(region: 'eu-west-1', endpoint: 'localhost' )
          expect(cfg.sigv4_region).to eq('eu-west-1')
        end

      end
    end
  end
end
