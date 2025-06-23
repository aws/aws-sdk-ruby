# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require_relative 'api_helper'
require 'aws-sdk-core'
require 'rspec'
require 'smithy-client'
require 'webmock/rspec'

# Use in a context block to set the ENV for the duration of a test.
def let_env(mock_env = {})
  before do
    mock_env(mock_env)
  end
end

# Use in an example block to set the ENV for the duration of a test.
def mock_env(mock_env = {})
  allow(ENV).to receive(:[]).and_call_original
  allow(ENV).to receive(:fetch).and_call_original
  mock_env.each_pair do |k, v|
    allow(ENV).to receive(:[]).with(k).and_return(v)
    allow(ENV).to receive(:fetch).with(k).and_return(v)
    allow(ENV).to receive(:fetch).with(k, anything) do |_, default|
      v || default
    end
  end
end

def mock_shared_config(config_contents = '', credentials_contents = '')
  puts 'Parsing mock config'
  parsed_config = Aws::Core::ConfigFileParser.new(
    config_contents
  ).parse
  puts 'Parsing mock credentials'
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
    # Clear current ENV to avoid loading credentials
    ENV.keep_if { |k, _| k == 'PATH' }

    # Default all shared config to be empty
    mock_shared_config
  end
end