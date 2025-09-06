# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3Vectors', Module.new) unless Aws.const_defined?('S3Vectors')

# @title Amazon S3 Vectors
# <p>Amazon S3 vector buckets are a bucket type to store and search vectors with sub-second search times. They are designed to provide dedicated API operations for you to interact with vectors to do similarity search. Within a vector bucket, you use a vector index to organize and logically group your vector data. When you make a write or read request, you direct it to a single vector index. You store your vector data as vectors. A vector contains a key (a name that you assign), a multi-dimensional vector, and, optionally, metadata that describes a vector. The key uniquely identifies the vector in a vector index.</p>
module Aws::S3Vectors
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3vectors/types'
require_relative 'aws-sdk-s3vectors/paginators'
require_relative 'aws-sdk-s3vectors/schema'
require_relative 'aws-sdk-s3vectors/auth_parameters'
require_relative 'aws-sdk-s3vectors/auth_resolver'
require_relative 'aws-sdk-s3vectors/client'
require_relative 'aws-sdk-s3vectors/customizations'
require_relative 'aws-sdk-s3vectors/errors'
require_relative 'aws-sdk-s3vectors/endpoint_parameters'
require_relative 'aws-sdk-s3vectors/endpoint_provider'
require_relative 'aws-sdk-s3vectors/waiters'
