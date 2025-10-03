# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DAX', Module.new) unless Aws.const_defined?('DAX')

# @title Amazon DynamoDB Accelerator (DAX)
# <p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching
#             frequently-accessed data from DynamoDB, so applications can access that data
#             with sub-millisecond latency. You can create a DAX cluster easily, using
#             the Amazon Web Services Management Console. With a few simple modifications to your code, your
#             application can begin taking advantage of the DAX cluster and realize
#             significant improvements in read performance.</p>
module Aws::DAX
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dax/types'
require_relative 'aws-sdk-dax/paginators'
require_relative 'aws-sdk-dax/schema'
require_relative 'aws-sdk-dax/auth_parameters'
require_relative 'aws-sdk-dax/auth_resolver'
require_relative 'aws-sdk-dax/client'
require_relative 'aws-sdk-dax/customizations'
require_relative 'aws-sdk-dax/errors'
require_relative 'aws-sdk-dax/endpoint_parameters'
require_relative 'aws-sdk-dax/endpoint_provider'
require_relative 'aws-sdk-dax/waiters'
