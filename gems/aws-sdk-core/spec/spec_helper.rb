# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require_relative 'api_helper'
require 'aws-sdk-core'
require 'rspec'
require 'smithy-client'
require 'webmock/rspec'

def mock_shared_config(config_contents = '', credentials_contents = '')
  parsed_config = Aws::Core::ConfigFileParser.new(
    config_contents
  ).parse
  parsed_credentials = Aws::Core::ConfigFileParser.new(
    credentials_contents
  ).parse

  config_profiles, sso_sessions =
    Aws::Core::ConfigFileStandardizer.new(
      parsed_config,
      :config
    ).standardize
  credentials_profiles = Aws::Core::ConfigFileStandardizer.new(
    parsed_credentials,
    :credentials
  ).standardize

  config = Aws::Core::ConfigFile.new(
    config_profiles: config_profiles,
    credentials_profiles: credentials_profiles,
    sso_sessions: sso_sessions
  )
  allow(Aws::Core).to receive(:shared_config).and_return(config)
end

RSpec.configure do |config|
  config.before(:each) do
    # Default all shared config to be empty
    mock_shared_config
  end
end