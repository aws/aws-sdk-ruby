# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3', Module.new) unless Aws.const_defined?('S3')

# @title Amazon Simple Storage Service
# <p></p>
module Aws::S3
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3/types'
require_relative 'aws-sdk-s3/paginators'
require_relative 'aws-sdk-s3/schema'
require_relative 'aws-sdk-s3/auth_parameters'
require_relative 'aws-sdk-s3/auth_resolver'
require_relative 'aws-sdk-s3/client'
require_relative 'aws-sdk-s3/errors'
require_relative 'aws-sdk-s3/endpoint_parameters'
require_relative 'aws-sdk-s3/endpoint_provider'
require_relative 'aws-sdk-s3/waiters'
require_relative 'aws-sdk-s3/customizations'
