# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'json'
require 'base64'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudFront', Module.new) unless Aws.const_defined?('CloudFront')

# @title Amazon CloudFront
# <fullname>Amazon CloudFront</fullname> <p>This is the <i>Amazon CloudFront API Reference</i>. This guide is for developers who need detailed information about CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html">Amazon CloudFront Developer Guide</a>.</p>
module Aws::CloudFront
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudfront/types'
require_relative 'aws-sdk-cloudfront/paginators'
require_relative 'aws-sdk-cloudfront/schema'
require_relative 'aws-sdk-cloudfront/auth_parameters'
require_relative 'aws-sdk-cloudfront/auth_resolver'
require_relative 'aws-sdk-cloudfront/client'
require_relative 'aws-sdk-cloudfront/errors'
require_relative 'aws-sdk-cloudfront/endpoint_parameters'
require_relative 'aws-sdk-cloudfront/endpoint_provider'
require_relative 'aws-sdk-cloudfront/waiters'
require_relative 'aws-sdk-cloudfront/customizations'
