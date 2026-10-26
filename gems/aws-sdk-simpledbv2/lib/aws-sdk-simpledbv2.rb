# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SimpleDBv2', Module.new) unless Aws.const_defined?('SimpleDBv2')

# @title Amazon SimpleDB v2
# Amazon SimpleDB is a web service providing the core database functions of data indexing and
#      querying in the cloud. By offloading the time and effort associated with building and operating a web-scale
#      database, SimpleDB provides developers the freedom to focus on application development.
#
#      A traditional, clustered relational database requires a sizable upfront capital outlay, is complex to design,
#      and often requires extensive and repetitive database administration. Amazon SimpleDB is dramatically simpler,
#      requiring no schema, automatically indexing your data and providing a simple API for storage and access.
#      This approach eliminates the administrative burden of data modeling, index maintenance, and performance tuning.
#      Developers gain access to this functionality within Amazon's proven computing environment, are able to scale
#      instantly, and pay only for what they use.
module Aws::SimpleDBv2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-simpledbv2/types'
require_relative 'aws-sdk-simpledbv2/paginators'
require_relative 'aws-sdk-simpledbv2/schema'
require_relative 'aws-sdk-simpledbv2/auth_parameters'
require_relative 'aws-sdk-simpledbv2/auth_resolver'
require_relative 'aws-sdk-simpledbv2/client'
require_relative 'aws-sdk-simpledbv2/errors'
require_relative 'aws-sdk-simpledbv2/endpoint_parameters'
require_relative 'aws-sdk-simpledbv2/endpoint_provider'
require_relative 'aws-sdk-simpledbv2/waiters'
require_relative 'aws-sdk-simpledbv2/customizations'
