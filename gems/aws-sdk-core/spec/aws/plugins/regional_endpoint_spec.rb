# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe RegionalEndpoint do
      RegionalEndpointClient = ApiHelper.sample_service.const_get(:Client)
      
      let(:client_class) { RegionalEndpointClient }

      let(:region) { 'REGION' }

      describe 'region option' do
        it 'adds a :region configuration option' do
          expect(client_class.new(region: 'region').config.region)
            .to eq('region')
        end

        it 'defaults to ENV["AWS_DEFAULT_REGION"]' do
          ENV['AWS_DEFAULT_REGION'] = 'env-region'
          expect(client_class.new.config.region).to eq('env-region')
        end

        it 'defaults to ENV["AWS_REGION"]' do
          ENV['AWS_REGION'] = 'env-fallback1'
          expect(client_class.new.config.region).to eq('env-fallback1')
        end

        it 'falls back to ENV["AMAZON_REGION"]' do
          ENV['AMAZON_REGION'] = 'region-fallback2'
          expect(client_class.new.config.region).to eq('region-fallback2')
        end

        it 'prefers AWS_REGION to AMAZON_REGION or AWS_DEFAULT_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          ENV['AWS_DEFAULT_REGION'] = 'aws-default-region'
          expect(client_class.new.config.region).to eq('aws-region')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          expect(client_class.new.config.region).to eq('aws-region')
        end

        it 'can be set directly, overriding the ENV["AWS_REGION"]' do
          ENV['AWS_REGION'] = 'env-region'
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

      describe 'sigv4a region set option' do
        before { ENV['AWS_REGION'] = 'region' }

        it 'is [cfg.region] by default' do
          client = client_class.new
          expect(client.config.sigv4a_signing_region_set).to eq(['region'])
        end

        it 'can be configured with shared config' do
          region_str = 'region1,region2'
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:sigv4a_signing_region_set)
            .and_return(region_str)
          client = client_class.new
          expected = region_str.split(',')
          expect(client.config.sigv4a_signing_region_set).to eq(expected)
        end

        it 'can be configured using env variable with precedence' do
          region_str = 'region1,region2'
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:sigv4a_signing_region_set)
            .and_return('shared-config-regions')
          ENV['AWS_SIGV4A_SIGNING_REGION_SET'] = region_str
          client = client_class.new
          expected = region_str.split(',')
          expect(client.config.sigv4a_signing_region_set).to eq(expected)
        end

        it 'can be configure through code with precedence' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:sigv4a_signing_region_set)
            .and_return('shared-config-regions')
          ENV['AWS_SIGV4A_SIGNING_REGION_SET'] = 'env-config-regions'
          client = client_class.new(sigv4a_signing_region_set: ['region'])
          expect(client.config.sigv4a_signing_region_set).to eq(['region'])
        end

        it 'rejects empty and nil values' do
          expect do
            client_class.new(sigv4a_signing_region_set: nil)
          end.to raise_error(Errors::InvalidRegionSetError)
          expect do
            client_class.new(sigv4a_signing_region_set: [])
          end.to raise_error(Errors::InvalidRegionSetError)

          client = client_class.new(
            sigv4a_signing_region_set: [nil, '', 'region']
          )
          expect(client.config.sigv4a_signing_region_set).to eq(['region'])
        end
      end

      describe 'endpoint option' do
        it 'preserves legacy pre-endpoints2.0 behavior and sets the endpoint and regional_endpoint' do
          prefix = client_class.api.metadata['endpointPrefix']
          client = client_class.new(region: region)
          expect(client.config.endpoint.to_s)
            .to eq("https://#{prefix}.#{region}.amazonaws.com")
          expect(client.config.regional_endpoint).to be_truthy
        end

        context 'ENV["AWS_IGNORE_CONFIGURED_ENDPOINT_URLS"] set' do
          before { ENV['AWS_IGNORE_CONFIGURED_ENDPOINT_URLS'] = 'True' }

          it 'ignores ENV["AWS_ENDPOINT_URL"]' do
            ENV['AWS_ENDPOINT_URL'] = 'custom-env-url'
            expect(client_class.new(region: region).config.endpoint.to_s)
              .not_to eq('custom-env-url')
          end

          it 'ignores endpoint_url in shared config' do
            expect(Aws.shared_config).not_to receive(:configured_endpoint)
            client_class.new(region: region)
          end

          it 'uses client configured endpoint' do
            expect(client_class.new(
              region: region, endpoint: 'https://custom-client-endpoint'
            ).config.endpoint.to_s).to eq('https://custom-client-endpoint')
          end
        end

        context 'Shared config ignore_configured_endpoint_urls set' do
          before do
            allow_any_instance_of(Aws::SharedConfig)
              .to receive(:ignore_configured_endpoint_urls).and_return('true')
          end

          it 'ignores ENV["AWS_ENDPOINT_URL"]' do
            ENV['AWS_ENDPOINT_URL'] = 'custom-env-url'
            expect(client_class.new(region: region).config.endpoint.to_s)
              .not_to eq('custom-env-url')
          end

          it 'ignores endpoint_url in shared config' do
            expect(Aws.shared_config).not_to receive(:configured_endpoint)
            client_class.new(region: region)
          end

          it 'uses client configured endpoint' do
            expect(client_class.new(
              region: region, endpoint: 'https://custom-client-endpoint'
            ).config.endpoint.to_s).to eq('https://custom-client-endpoint')
          end
        end

        context 'client ignore_configured_endpoint_urls set' do
          let(:cfg) do
            {
              region: region,
              ignore_configured_endpoint_urls: true
            }
          end

          it 'ignores ENV["AWS_ENDPOINT_URL"]' do
            ENV['AWS_ENDPOINT_URL'] = 'custom-env-url'
            expect(client_class.new(cfg).config.endpoint.to_s)
              .not_to eq('custom-env-url')
          end

          it 'ignores endpoint_url in shared config' do
            expect(Aws.shared_config).not_to receive(:configured_endpoint)
            client_class.new(cfg)
          end

          it 'ignores ENV["AWS_ENDPOINT_URL"] even when Shared config ignore_configured_endpoint_urls set' do
            allow_any_instance_of(Aws::SharedConfig)
              .to receive(:ignore_configured_endpoint_urls).and_return('true')
            ENV['AWS_ENDPOINT_URL'] = 'custom-env-url'
            expect(client_class.new(cfg).config.endpoint.to_s)
              .not_to eq('custom-env-url')
          end
        end

        it 'uses configured_endpoint from shared config' do
          allow(Aws.shared_config).to receive(:configured_endpoint)
            .and_return('https://shared-config')
          expect(client_class.new(region: region).config.endpoint.to_s)
            .to eq('https://shared-config')
        end

        it 'uses ENV["AWS_ENDPOINT_URL"] over shared config' do
          allow(Aws.shared_config).to receive(:configured_endpoint)
            .and_return('https://shared-config')
          ENV['AWS_ENDPOINT_URL'] = 'https://global-env'
          expect(client_class.new(region: region).config.endpoint.to_s)
            .to eq('https://global-env')
        end

        it 'uses service specific ENV over ENV["AWS_ENDPOINT_URL"]' do
          allow(Aws.shared_config).to receive(:configured_endpoint)
            .and_return('https://shared-config')
          ENV['AWS_ENDPOINT_URL'] = 'https://global-env'
          ENV['AWS_ENDPOINT_URL_SVC'] = 'https://service-env'
          expect(client_class.new(region: region).config.endpoint.to_s)
            .to eq('https://service-env')
        end

        it 'uses client configured endpoint over all other configuration' do
          allow(Aws.shared_config).to receive(:configured_endpoint)
            .and_return('https://shared-config')
          ENV['AWS_ENDPOINT_URL'] = 'https://global-env'
          ENV['AWS_ENDPOINT_URL_SVC'] = 'https://service-env'
          expect(client_class.new(
            region: region, endpoint: 'https://client').config.endpoint.to_s)
            .to eq('https://client')
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
