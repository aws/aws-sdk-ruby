# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../../lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sigv2/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sigv4/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-eventstream/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-partitions/lib',  __FILE__))

require 'webmock/rspec'

require_relative './sigv4_helper'

# Prevent the SDK unit tests from loading actual credentials while under test.
# By default the SDK attempts to load credentials from:
#
# * ENV, e.g. ENV['AWS_ACCESS_KEY_ID']
# * Shared credentials file, e.g. ~/.aws/credentials
# * EC2 instance metadata server running at 169.254.169.254
#
RSpec.configure do |config|
  # Module to help check service signing
  config.include Sigv4Helper

  config.before(:each) do
    # Clear the current ENV to avoid loading credentials.
    # This was previously mocked with stub_const but was provided a hash.
    ENV.clear

    # disable loading credentials from shared file
    allow(Dir).to receive(:home).and_raise(ArgumentError)

    # disable instance profile credentials
    token_path = '/latest/api/token'
    path = '/latest/meta-data/iam/security-credentials/'
    stub_request(:get, "http://169.254.169.254#{path}").to_raise(SocketError)
    stub_request(:put, "http://169.254.169.254#{token_path}").to_raise(SocketError)

    Aws.shared_config.fresh
  end

  # Thread.report_on_exception was set to default true in Ruby 2.5
  # When testing code that intentionally has threads that raise exceptions
  # disable printing of those exceptions.
  config.around(:each, thread_report_on_exception: false) do |example|
    if Thread.respond_to?(:report_on_exception)
      current_value = Thread.report_on_exception
      Thread.report_on_exception = false
    end

    example.call

    Thread.report_on_exception = current_value if current_value
  end

  if defined?(JRUBY_VERSION)
    config.around(:each, :jruby_flaky) do |example|
      attempt = 0
      retries = 3
      loop do
        attempt += 1
        example.run
        break if !example.exception || attempt >= retries

        # clear the exception, ensuring it can run from a clean state
        example.example.instance_variable_set(:@exception, nil)
        redo
      end
    end
  end
end
