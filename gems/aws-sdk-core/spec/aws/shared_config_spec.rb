# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe SharedConfig do
    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'credentials', 'mock_shared_credentials'
        )
      )
    end

    let(:mock_config_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'credentials', 'mock_shared_config'
        )
      )
    end

    context 'resolving config files' do
      before(:each) do
        allow(Dir).to receive(:home).and_return('HOME')
      end

      it 'defaults credentials_path to Dir.home/.aws/credentials' do
        config = SharedConfig.new
        expect(config.credentials_path).to include(
          File.join('HOME', '.aws', 'credentials')
        )
      end

      it 'defaults config_path to Dir.home/.aws/config' do
        config = SharedConfig.new(config_enabled: true)
        expect(config.config_path).to include(
          File.join('HOME', '.aws', 'config')
        )
      end

      it 'will use the ENV variable AWS_SHARED_CREDENTIALS_FILE if set' do
        expected_credentials_path = '/tmp/aws-test-credentials.ini'
        stub_const('ENV', 'AWS_SHARED_CREDENTIALS_FILE' => expected_credentials_path)
        config = SharedConfig.new
        expect(config.credentials_path).to eq(expected_credentials_path)
      end

      it 'will use the ENV variable AWS_CONFIG_FILE if set' do
        expected_config_path = '/tmp/aws-test-config.ini'
        stub_const('ENV', 'AWS_CONFIG_FILE' => expected_config_path)
        config = SharedConfig.new(config_enabled: true)
        expect(config.config_path).to eq(expected_config_path)
      end

      it 'will not load the shared config file if no ENV variable set' do
        config = SharedConfig.new
        expect(config.config_path).to be_nil
      end
    end

    context 'resolving profile name' do
      it 'uses "default" as the default profile name' do
        config = SharedConfig.new
        expect(config.profile_name).to eq('default')
      end

      it 'uses the ENV["AWS_PROFILE"] value before the default value' do
        stub_const('ENV', 'AWS_PROFILE' => 'prof')
        config = SharedConfig.new
        expect(config.profile_name).to eq('prof')
      end

      it 'uses explicitly provided profile names over other choices' do
        stub_const('ENV', 'AWS_PROFILE' => 'prof')
        config = SharedConfig.new(profile_name: 'my_profile')
        expect(config.profile_name).to eq('my_profile')
      end
    end

    context 'region selection' do
      it 'does not resolve region from config if :config_enabled not set' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          profile_name: 'config_first'
        )
        expect(config.region).to be_nil
      end

      it 'does resolve region from credentials if :config_enabled not set' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          profile_name: 'credentials_first'
        )
        expect(config.region).to eq('us-west-2')
      end

      it 'does resolve region from config if :config_enabled set' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          config_enabled: true
        )
        expect(config.region).to eq('us-east-1')
      end

      it 'will attempt to first resolve a region from credentials' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          credentials_path: mock_credential_file,
          config_enabled: true,
          profile_name: 'credentials_first'
        )
        expect(config.region).to eq('us-west-2')
      end
    end

    context 'use fips endpoint selection' do
      it 'can resolve use_fips_endpoint from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'use_fips_endpoint'
        )
        expect(config.use_fips_endpoint).to eq('true')
      end
    end

    context 'use dualstack endpoint selection' do
      it 'can resolve use_dualstack_endpoint from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'use_dualstack_endpoint'
        )
        expect(config.use_dualstack_endpoint).to eq('true')
      end
    end

    context 'account_id_endpoint_mode selection' do
      it 'can resolve account_id_endpoint_mode from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'account_id_endpoint_mode'
        )
        expect(config.account_id_endpoint_mode).to eq('disabled')
      end
    end

    context 'auth_scheme_preference selection' do
      it 'can resolve auth_scheme_preference from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'auth_scheme_preference'
        )
        expect(config.auth_scheme_preference).to eq('httpBearerAuth,sigv4')
      end
    end

    context 'ca_bundle selection' do
      it 'can resolve ca_bundle from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'ca_bundle'
        )
        expect(config.ca_bundle).to eq('/path/to/bundle.crt')
      end
    end

    context 'endpoint_discovery selection' do
      it 'can resolve endpoint_discovery from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'endpoint_discovery_enabled'
        )
        expect(config.endpoint_discovery_enabled).to eq('true')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'endpoint_discovery_disabled'
        )
        expect(config.endpoint_discovery_enabled).to eq('false')
      end
    end

    context 'sts_regional_endpoints selection' do
      it 'can resolve sts_regional_endpoints from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'sts_regional'
        )
        expect(config.sts_regional_endpoints).to eq('regional')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'sts_legacy'
        )
        expect(config.sts_regional_endpoints).to eq('legacy')
      end
    end

    context 's3_us_east_1_regional_endpoint selection' do
      it 'can resolve s3_us_east_1_regional_endpoint from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_iad_regional'
        )
        expect(config.s3_us_east_1_regional_endpoint).to eq('regional')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_iad_legacy'
        )
        expect(config.s3_us_east_1_regional_endpoint).to eq('legacy')
      end
    end

    context 's3_use_arn_region selection' do
      it 'can resolve s3_use_arn_region from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_use_arn_region'
        )
        expect(config.s3_use_arn_region).to eq('true')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_do_not_use_arn_region'
        )
        expect(config.s3_use_arn_region).to eq('false')
      end
    end

    context 's3_disable_express_session_auth selection' do
      it 'can resolve s3_disable_express_session_auth from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_disable_express_session_auth'
        )
        expect(config.s3_disable_express_session_auth).to eq('true')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_do_not_use_express_zonal_auth'
        )
        expect(config.s3_disable_express_session_auth).to eq('false')
      end
    end

    context 'disable_host_prefix_injection selection' do
      it 'can resolve disable_host_prefix_injection from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'disable_host_prefix_injection'
        )
        expect(config.disable_host_prefix_injection).to eq('true')
      end
    end

    context 'retry_mode selection' do
      it 'can resolve retry_mode from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'retry_mode_legacy'
        )
        expect(config.retry_mode).to eq('legacy')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'retry_mode_standard'
        )
        expect(config.retry_mode).to eq('standard')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'retry_mode_adaptive'
        )
        expect(config.retry_mode).to eq('adaptive')
      end
    end

    context 'max_attempts selection' do
      it 'can resolve max_attempts from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'max_attempts'
        )
        expect(config.max_attempts).to eq('1')
      end
    end

    context 'adaptive_retry_wait_to_fill selection' do
      it 'can resolve adaptive_retry_wait_to_fill from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'adaptive_retry_wait_to_fill'
        )
        expect(config.adaptive_retry_wait_to_fill).to eq('false')
      end
    end

    context 'correct_clock_skew selection' do
      it 'can resolve correct_clock_skew from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'correct_clock_skew'
        )
        expect(config.correct_clock_skew).to eq('false')
      end
    end

    context 's3_disable_multiregion_access_points' do
      it 'can resolve s3_disable_multiregion_access_points from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_disable_multiregion_access_points'
        )
        expect(config.s3_disable_multiregion_access_points).to eq('true')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 's3_do_not_disable_multiregion_access_points'
        )
        expect(config.s3_disable_multiregion_access_points).to eq('false')
      end
    end

    context 'ec2_metadata_service_endpoint selection' do
      it 'can resolve ec2_metadata_service_endpoint from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'ec2_metadata_service_endpoint'
        )
        expect(config.ec2_metadata_service_endpoint)
          .to eq('http://123.123.123.123')
      end
    end

    context 'ec2_metadata_service_endpoint_mode selection' do
      it 'can resolve ec2_metadata_service_endpoint_mode from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'ec2_metadata_service_endpoint_mode'
        )
        expect(config.ec2_metadata_service_endpoint_mode).to eq('IPv6')
      end
    end

    context 'ec2_metadata_v1_disabled selection' do
      it 'can resolve ec2_metadata_v1_disabled from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'ec2_metadata_v1_disabled'
        )
        expect(config.ec2_metadata_v1_disabled).to eq('true')
      end
    end

    context 'defaults_mode' do
      it 'can resolve defaults_mode from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'defaults_mode_standard'
        )
        expect(config.defaults_mode).to eq('standard')
      end
    end

    context 'sdk_ua_app_id' do
      it 'can resolve sdk_ua_app_id from config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'sdk_ua_app_id'
        )
        expect(config.sdk_ua_app_id).to eq('peccy-service')
      end
    end

    context 'disable_request_compression' do
      it 'can resolve disable_request_compression from the config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'disable_request_compression'
        )
        expect(config.disable_request_compression). to eq('true')

        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'do_not_disable_request_compression'
        )
        expect(config.disable_request_compression). to eq('false')
      end
    end

    context 'request_min_compression_size_bytes' do
      it 'can resolve request_min_compression_size_bytes from the config file' do
        config = SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
          profile_name: 'request_min_compression_size_bytes'
        )
        expect(config.request_min_compression_size_bytes). to eq('100')
      end
    end

    context 'configured_endpoint' do
      let(:config) do
        SharedConfig.new(
          config_path: mock_config_file,
          config_enabled: true,
        )
      end

      it 'resolves configured_endpoint from global urls' do
        expect(config.configured_endpoint(profile: 'global_endpoint_url'))
          .to eq('https://example.com:9000')
      end

      it 'resolves service specific endpoints over global urls' do
        expect(config.configured_endpoint(
          profile: 'service_specific_and_global_endpoint_url',
          service_id: 's3'))
          .to eq('https://example.com:9000')

        expect(config.configured_endpoint(
          profile: 'service_specific_and_global_endpoint_url',
          service_id: 'other_service'))
          .to eq('http://localhost:1234')
      end

      it 'transforms service_id' do
        expect(config.configured_endpoint(
          profile: 'service_specific_and_global_endpoint_url',
          service_id: 'Elastic Beanstalk'))
          .to eq('http://localhost:8000')
      end
    end
  end
end
