require 'spec_helper'

module Aws
  module Plugins
    describe RegionalEndpoint do

      let(:env) { {} }

      let(:client_class) {
        Seahorse::Client.define(plugins: [RegionalEndpoint])
      }

      before do
        stub_const("ENV", env)
      end

      describe 'region option' do

        it 'adds a :region configuration option' do
          expect(client_class.new(region: 'region').config.region).to eq('region')
        end

        it 'defaults to ENV["AWS_REGION"]' do
          env['AWS_REGION'] = 'env-region'
          expect(client_class.new.config.region).to eq('env-region')
        end

        it 'falls back to ENV["AMAZON_REGION"]' do
          env['AMAZON_REGION'] = 'region-fallback'
          expect(client_class.new.config.region).to eq('region-fallback')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          env['AWS_REGION'] = 'aws-region'
          env['AMAZON_REGION'] = 'amazon-region'
          expect(client_class.new.config.region).to eq('aws-region')
        end

        it 'can be set directly, overriding the ENV["AWS_REGION"]' do
          env['AWS_REGION'] = 'env-region'
          expect(client_class.new(region:'cfg').config.region).to eq('cfg')
        end

        it 'raises an argument error when not set' do
          client = Seahorse::Client.define
          client.add_plugin(RegionalEndpoint)
          expect { client.new }.to raise_error(Errors::MissingRegionError)
        end

        it 'raises an argument error when set to nil' do
          client = Seahorse::Client.define
          client.add_plugin(RegionalEndpoint)
          expect { client.new(region:nil) }.to raise_error(Errors::MissingRegionError)
        end

      end

      describe 'endpoint option' do

        it 'defaults the endpoint to PREFIX.REGION.amazonaws.com' do
          client_class.api.metadata['endpoint_prefix'] = 'PREFIX'
          client = client_class.new(region: 'REGION')
          expect(client.config.endpoint).to eq('PREFIX.REGION.amazonaws.com')
        end

        it 'uses the endpoint defined in metadata if present' do
          client_class.api.metadata['regional_endpoints'] = {
            'region-name' => 'ENDPOINT'
          }
          client = client_class.new(region: 'region-name')
          expect(client.config.endpoint).to eq('ENDPOINT')
        end

      end
    end
  end
end
