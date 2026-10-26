# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3Files', Module.new) unless Aws.const_defined?('S3Files')

# @title Amazon S3 Files
# <p>S3 Files makes S3 buckets accessible as high-performance file systems powered by EFS. This service enables file system interface access to S3 data with sub-millisecond latencies through mount targets, supporting AI/ML workloads, media processing, and hybrid storage workflows that require both file system and object storage access to the same data.</p>
module Aws::S3Files
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3files/types'
require_relative 'aws-sdk-s3files/paginators'
require_relative 'aws-sdk-s3files/schema'
require_relative 'aws-sdk-s3files/auth_parameters'
require_relative 'aws-sdk-s3files/auth_resolver'
require_relative 'aws-sdk-s3files/client'
require_relative 'aws-sdk-s3files/errors'
require_relative 'aws-sdk-s3files/endpoint_parameters'
require_relative 'aws-sdk-s3files/endpoint_provider'
require_relative 'aws-sdk-s3files/waiters'
require_relative 'aws-sdk-s3files/customizations'
