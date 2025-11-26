# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElastiCache', Module.new) unless Aws.const_defined?('ElastiCache')

# @title Amazon ElastiCache
# <fullname>Amazon ElastiCache</fullname>
#          <p>Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale
#             a distributed cache in the cloud.</p>
#          <p>With ElastiCache, customers get all of the benefits of a high-performance, in-memory
#             cache with less of the administrative burden involved in launching and managing a
#             distributed cache. The service makes setup, scaling, and cluster failure handling much
#             simpler than in a self-managed cache deployment.</p>
#          <p>In addition, through integration with Amazon CloudWatch, customers get enhanced
#             visibility into the key performance statistics associated with their cache and can
#             receive alarms if a part of their cache runs hot.</p>
module Aws::ElastiCache
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elasticache/types'
require_relative 'aws-sdk-elasticache/paginators'
require_relative 'aws-sdk-elasticache/schema'
require_relative 'aws-sdk-elasticache/auth_parameters'
require_relative 'aws-sdk-elasticache/auth_resolver'
require_relative 'aws-sdk-elasticache/client'
require_relative 'aws-sdk-elasticache/errors'
require_relative 'aws-sdk-elasticache/endpoint_parameters'
require_relative 'aws-sdk-elasticache/endpoint_provider'
require_relative 'aws-sdk-elasticache/waiters'
require_relative 'aws-sdk-elasticache/customizations'
