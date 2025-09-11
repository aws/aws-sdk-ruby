# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MemoryDB', Module.new) unless Aws.const_defined?('MemoryDB')

# @title Amazon MemoryDB
# <p>MemoryDB is a fully managed, Redis OSS-compatible, in-memory database that delivers ultra-fast performance and Multi-AZ durability for modern applications built using microservices architectures.
#        
#        MemoryDB stores the entire database in-memory, enabling low latency and high throughput data access. It is compatible with Redis OSS, a popular open source data store, enabling you to leverage Redis OSS’ flexible and friendly data structures, APIs, and commands.</p>
module Aws::MemoryDB
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-memorydb/types'
require_relative 'aws-sdk-memorydb/paginators'
require_relative 'aws-sdk-memorydb/schema'
require_relative 'aws-sdk-memorydb/auth_parameters'
require_relative 'aws-sdk-memorydb/auth_resolver'
require_relative 'aws-sdk-memorydb/client'
require_relative 'aws-sdk-memorydb/customizations'
require_relative 'aws-sdk-memorydb/errors'
require_relative 'aws-sdk-memorydb/endpoint_parameters'
require_relative 'aws-sdk-memorydb/endpoint_provider'
require_relative 'aws-sdk-memorydb/waiters'
