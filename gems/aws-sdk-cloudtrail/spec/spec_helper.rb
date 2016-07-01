# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
$:.unshift(File.expand_path('../../lib', __FILE__))
$:.unshift(File.expand_path('../../../aws-sdk-core/lib', __FILE__))

require 'rspec'
require 'webmock/rspec'
require 'aws-sdk-cloudtrail'

RSpec.configure do |config|
  config.before(:each) do

    stub_const('ENV', {})

    # disable loading credentials from shared file
    allow(Dir).to receive(:home).and_raise(ArgumentError)

    # disable instance profile credentials
    path = '/latest/meta-data/iam/security-credentials/'
    stub_request(:get, "http://169.254.169.254#{path}").to_raise(SocketError)

  end
end
