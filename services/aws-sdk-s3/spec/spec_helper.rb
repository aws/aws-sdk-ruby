$LOAD_PATH.unshift(File.expand_path('../../../../aws-sdk-core/lib', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sdk-kms/lib', __FILE__))

require 'simplecov'
require 'rspec'
require 'webmock/rspec'
require 'aws-sdk-s3'

SimpleCov.command_name('test:unit:aws-sdk-s3')
