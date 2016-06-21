$LOAD_PATH.unshift(File.expand_path('../../../../aws-sdk-core/lib', __FILE__))

require 'simplecov'
require 'rspec'
require 'aws-sdk-cloudfront'

SimpleCov.command_name('test:unit:aws-sdk-cloudfront')
