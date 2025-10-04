# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3Outposts', Module.new) unless Aws.const_defined?('S3Outposts')

# @title Amazon S3 on Outposts
# <p>Amazon S3 on Outposts provides access to S3 on Outposts operations.</p>
module Aws::S3Outposts
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3outposts/types'
require_relative 'aws-sdk-s3outposts/paginators'
require_relative 'aws-sdk-s3outposts/schema'
require_relative 'aws-sdk-s3outposts/auth_parameters'
require_relative 'aws-sdk-s3outposts/auth_resolver'
require_relative 'aws-sdk-s3outposts/client'
require_relative 'aws-sdk-s3outposts/customizations'
require_relative 'aws-sdk-s3outposts/errors'
require_relative 'aws-sdk-s3outposts/endpoint_parameters'
require_relative 'aws-sdk-s3outposts/endpoint_provider'
require_relative 'aws-sdk-s3outposts/waiters'
