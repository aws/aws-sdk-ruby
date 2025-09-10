# frozen_string_literal: true

require 'byebug'
require 'rspec'
require 'webmock/rspec'

require 'aws-sdk-core'
require 'aws-sdk-sso'
require 'aws-sdk-ssooidc'

require_relative 'client_helper'

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
    stub_const('ENV', {})

    # Default all shared config to be empty
    mock_shared_config
  end
end

RSpec.shared_examples 'a refreshing credentials provider' do
  # expire in 5 minutes
  let(:expiration) { Time.now.utc + 299 }
  let(:expiration2) { expiration + 3600 }
  let(:provider) { described_class.new }

  it 'auto-refreshes within 5 minutes from expiration' do
    # Set expiring credentials
    provider.identity
    # Refresh credentials
    creds = provider.identity
    expect(creds.access_key_id).to eq('akid-2')
    expect(creds.secret_access_key).to eq('secret-2')
    expect(creds.session_token).to eq('session-token-2')
    expect(creds.expiration.to_s).to eq(expiration2.to_s)
  end
end
