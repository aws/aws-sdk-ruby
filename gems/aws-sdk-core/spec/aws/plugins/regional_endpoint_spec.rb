# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe RegionalEndpoint do
      RegionalEndpointClient = ApiHelper.sample_service.const_get(:Client)

      let(:env) { {} }

      let(:client_class) { RegionalEndpointClient }

      before do
        stub_const('ENV', env)
      end

      describe 'region option' do
        it 'adds a :region configuration option' do
          expect(client_class.new(region: 'region').config.region)
            .to eq('region')
        end

        it 'defaults to ENV["AWS_DEFAULT_REGION"]' do
          env['AWS_DEFAULT_REGION'] = 'env-region'
          expect(client_class.new.config.region).to eq('env-region')
        end

        it 'defaults to ENV["AWS_REGION"]' do
          env['AWS_REGION'] = 'env-fallback1'
          expect(client_class.new.config.region).to eq('env-fallback1')
        end

        it 'falls back to ENV["AMAZON_REGION"]' do
          env['AMAZON_REGION'] = 'region-fallback2'
          expect(client_class.new.config.region).to eq('region-fallback2')
        end

        it 'prefers AWS_REGION to AMAZON_REGION or AWS_DEFAULT_REGION' do
          env['AWS_REGION'] = 'aws-region'
          env['AMAZON_REGION'] = 'amazon-region'
          env['AWS_DEFAULT_REGION'] = 'aws-default-region'
          expect(client_class.new.config.region).to eq('aws-region')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          env['AWS_REGION'] = 'aws-region'
          env['AMAZON_REGION'] = 'amazon-region'
          expect(client_class.new.config.region).to eq('aws-region')
        end

        it 'can be set directly, overriding the ENV["AWS_REGION"]' do
          env['AWS_REGION'] = 'env-region'
          expect(client_class.new(region: 'cfg').config.region).to eq('cfg')
        end

        it 'raises when region is not a valid RFC host label' do
          expect {
            client_class.new(region: '@peccy.com')
          }.to raise_error(Errors::InvalidRegionError)
        end

        it 'raises an argument error when not set' do
          client = Seahorse::Client::Base.define
          client.add_plugin(RegionalEndpoint)
          expect {
            client.new(endpoint: 'http://foo.com')
          }.to raise_error(Errors::MissingRegionError)
        end

        it 'raises an argument error when set to nil' do
          client = Seahorse::Client::Base.define
          client.add_plugin(RegionalEndpoint)
          expect {
            client.new(endpoint: 'http://foo.com', region: nil)
          }.to raise_error(Errors::MissingRegionError)
        end

        it 'validates against regions using the proper format' do
          client = Seahorse::Client::Base.define
          client.add_plugin(RegionalEndpoint)
          Aws.partitions.each do |partition|
            partition.regions.each do |region|
              expect {
                client.new(endpoint: 'http://foo.com', region: region.name)
              }.to_not raise_error
            end
          end
        end
      end

      describe 'endpoint option' do
        it 'defaults the endpoint to PREFIX.REGION.amazonaws.com' do
          prefix = client_class.api.metadata['endpointPrefix']
          client = client_class.new(region: 'REGION')
          expect(client.config.endpoint.to_s)
            .to eq("https://#{prefix}.REGION.amazonaws.com")
        end
      end

      describe 'fips shim' do
        it 'does not modify us-west-2 with use_fips_endpoint' do
          expect(RegionalEndpoint).not_to receive(:warn)

          config = client_class.new(
            region: 'us-west-1', use_fips_endpoint: true
          ).config

          expect(config.region).to eq('us-west-1')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'does not modify us-west-2 with use_fips_endpoint: false' do
          expect(RegionalEndpoint).not_to receive(:warn)

          config = client_class.new(
            region: 'us-west-1', use_fips_endpoint: false
          ).config

          expect(config.region).to eq('us-west-1')
          expect(config.use_fips_endpoint).to be(false)
        end

        it 'modifies fips-us-west-2 with use_fips_endpoint' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'fips-us-west-1', use_fips_endpoint: true
          ).config

          expect(config.region).to eq('us-west-1')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'modifies fips-us-west-2 with use_fips_endpoint: false' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'fips-us-west-1', use_fips_endpoint: false
          ).config

          expect(config.region).to eq('us-west-1')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'modifies rekognition-fips.us-west-2 with use_fips_endpoint' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'rekognition-fips.us-west-2', use_fips_endpoint: true
          ).config

          expect(config.region).to eq('rekognition.us-west-2')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'modifies rekognition-fips.us-west-2 with use_fips_endpoint: false' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'rekognition-fips.us-west-2', use_fips_endpoint: false
          ).config

          expect(config.region).to eq('rekognition.us-west-2')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'modifies query-fips-us-west-2 with use_fips_endpoint' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'query-fips-us-west-2', use_fips_endpoint: true
          ).config

          expect(config.region).to eq('query-us-west-2')
          expect(config.use_fips_endpoint).to be(true)
        end

        it 'modifies query-fips-us-west-2 with use_fips_endpoint: false' do
          expect(RegionalEndpoint).to receive(:warn)

          config = client_class.new(
            region: 'query-fips-us-west-2', use_fips_endpoint: false
          ).config

          expect(config.region).to eq('query-us-west-2')
          expect(config.use_fips_endpoint).to be(true)
        end
      end

      describe 'use dualstack endpoint option' do
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

      describe 'use fips endpoint option' do
        FipsClient = ApiHelper.sample_service.const_get(:Client)

        let(:creds) { Aws::Credentials.new('akid', 'secret') }

        it 'defaults to false' do
          client = FipsClient.new(region: 'us-west-2')
          expect(client.config.use_fips_endpoint).to eq false
        end

        it 'can be configured with shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:use_fips_endpoint).and_return(true)
          client = FipsClient.new(region: 'us-west-2')
          expect(client.config.use_fips_endpoint).to eq true
        end

        it 'can be configured using env variable with precedence' do
          ENV['AWS_USE_FIPS_ENDPOINT'] = 'true'
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:use_fips_endpoint).and_return(false)
          client = FipsClient.new(region: 'us-west-2')
          expect(client.config.use_fips_endpoint).to eq true
        end

        it 'can be configure through code with precedence' do
          ENV['AWS_USE_FIPS_ENDPOINT'] = 'true'
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:use_fips_endpoint).and_return(true)
          client = FipsClient.new(
            region: 'us-west-2', use_fips_endpoint: false
          )
          expect(client.config.use_fips_endpoint).to eq false
        end
      end
    end
  end
end
