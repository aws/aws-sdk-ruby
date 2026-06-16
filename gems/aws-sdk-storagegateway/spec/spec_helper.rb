# frozen_string_literal: true

# This is generated code!

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'aws-sdk-storagegateway'

require 'rspec'

RSpec.configure do |config|
  # Skip examples/groups tagged :jruby_skip when running on JRuby.
  # Currently this covers an intermittent defect in the CBOR stub
  # deserialization round-trip (10.0 and 10.1): stubbed response data
  # sometimes comes back empty/nil. The failures are non-deterministic
  # (not reproducible by RSpec seed).
  # See https://github.com/jruby/jruby/issues/9313
  # TODO: remove the tags once these are fixed upstream.
  config.before(:each, :jruby_skip) do
    skip 'known JRuby failure' if RUBY_ENGINE == 'jruby'
  end
end
