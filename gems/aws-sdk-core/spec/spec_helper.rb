# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-cognitoidentity/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-signin/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-sso/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-ssooidc/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sdk-sts/lib', __dir__))

require 'byebug'
require 'rspec'
require 'webmock/rspec'

require 'aws-sdk-core'
require 'aws-sdk-cognitoidentity'
require 'aws-sdk-signin'
require 'aws-sdk-sso'
require 'aws-sdk-ssooidc'
require 'aws-sdk-sts'

require_relative 'client_helper'
require_relative 'login_credentials_provider_helper'

def mock_shared_config(config_contents = '', credentials_contents = '')
  parsed_config = Aws::Core::ConfigFileParser.new(config_contents).parse
  parsed_credentials = Aws::Core::ConfigFileParser.new(credentials_contents).parse

  config_profiles, sso_sessions = Aws::Core::ConfigFileStandardizer.new(parsed_config, :config).standardize
  credentials_profiles = Aws::Core::ConfigFileStandardizer.new(parsed_credentials, :credentials).standardize

  config = Aws::Core::ConfigFile.new(
    config_profiles: config_profiles,
    credentials_profiles: credentials_profiles,
    sso_sessions: sso_sessions
  )
  allow(Aws::Core).to receive(:shared_config).and_return(config)
end

RSpec.configure do |config|
  config.include LoginCredentialsProviderHelper

  config.before(:each) do
    stub_const('ENV', {})

    # Default all shared config to be empty
    mock_shared_config
  end
end

def expect_metrics_from_user_agent_header(resp, features)
  header = resp.context.http_request.headers['User-Agent']
  metrics = header.match(%r{ m/([A-Za-z0-9+-,]+)})[1].split(',')
  expect(metrics.uniq).to eq(metrics)
  expect(metrics).to include(*features)
end
