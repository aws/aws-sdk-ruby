require 'spec_helper'

module Aws
  describe SharedConfig do

    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    }

    let(:mock_config_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_config'))
    }

    context 'resolving config files' do
      before(:each) do
        allow(Dir).to receive(:home).and_return('HOME')
      end

      it 'defaults credentials_path to Dir.home/.aws/credentials' do
        config = SharedConfig.new
        expect(config.credentials_path).to eq(
          File.join('HOME', '.aws', 'credentials')
        )
      end

      it 'defaults config_path to Dir.home/.aws/config' do
        config = SharedConfig.new(config_enabled: true)
        expect(config.config_path).to eq(
          File.join('HOME', '.aws', 'config')
        )
      end

      it 'will not load the shared config file if no ENV variable set' do
        config = SharedConfig.new
        expect(config.config_path).to be_nil
      end
    end

    context 'resolving profile name' do
      it 'uses "default" as the default profile name' do
        config = SharedConfig.new
        expect(config.profile_name).to eq("default")
      end

      it 'uses the ENV["AWS_PROFILE"] value before the default value' do
        stub_const('ENV', {"AWS_PROFILE" => "prof"})
        config = SharedConfig.new
        expect(config.profile_name).to eq("prof")
      end

      it 'uses explicitly provided profile names over other choices' do
        stub_const('ENV', {"AWS_PROFILE" => "prof"})
        config = SharedConfig.new(profile_name: "my_profile")
        expect(config.profile_name).to eq("my_profile")
      end
    end

    context 'region selection' do
      it 'does not resolve region if :config_enabled not set' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          profile_name: "credentials_first"
        )
        expect(config.region).to be_nil
      end

      it 'does resolve region from config if :config_enabled set' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          config_enabled: true
        )
        expect(config.region).to eq("us-east-1")
      end

      it 'will attempt to first resolve a region from credentials' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          config_enabled: true,
          profile_name: "credentials_first"
        )
        expect(config.region).to eq("us-west-2")
      end
    end

    context 'endpoint_discovery selection' do

      it 'can resolves endpoint_discovery from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: "endpoint_discovery_enabled"
        )
        expect(config.endpoint_discovery).to eq("true")

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: "endpoint_discovery_disabled"
        )
        expect(config.endpoint_discovery).to eq("false")
      end

      context 'sts_regional_endpoints selection' do

        it 'can resolve sts_regional_endpoints from config file' do
          config = SharedConfig.new(
            config_path: mock_config_file,
            config_enabled: true,
            profile_name: "sts_regional"
          )
          expect(config.sts_regional_endpoints).to eq('regional')

          config = SharedConfig.new(
            config_path: mock_config_file,
            config_enabled: true,
            profile_name: "sts_legacy"
          )
          expect(config.sts_regional_endpoints).to eq('legacy')
        end

      end

      context 's3_us_east_1_regional_endpoint selection' do

        it 'can resolve s3_us_east_1_regional_endpoint from config file' do
          config = SharedConfig.new(
            config_path: mock_config_file,
            config_enabled: true,
            profile_name: "s3_iad_regional"
          )
          expect(config.s3_us_east_1_regional_endpoint).to eq('regional')

          config = SharedConfig.new(
            config_path: mock_config_file,
            config_enabled: true,
            profile_name: "s3_iad_legacy"
          )
          expect(config.s3_us_east_1_regional_endpoint).to eq('legacy')
        end

      end

    end
  end
end
