# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TimestreamInfluxDB', Module.new) unless Aws.const_defined?('TimestreamInfluxDB')

# @title Timestream InfluxDB
# <p>Amazon Timestream for InfluxDB is a managed time-series database engine that makes it
#             easy for application developers and DevOps teams to run InfluxDB databases on Amazon Web Services for near real-time time-series applications using open-source APIs. With Amazon Timestream for InfluxDB, it is easy to set up, operate, and scale time-series workloads that can answer queries with single-digit millisecond query response time.</p>
module Aws::TimestreamInfluxDB
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-timestreaminfluxdb/types'
require_relative 'aws-sdk-timestreaminfluxdb/paginators'
require_relative 'aws-sdk-timestreaminfluxdb/schema'
require_relative 'aws-sdk-timestreaminfluxdb/auth_parameters'
require_relative 'aws-sdk-timestreaminfluxdb/auth_resolver'
require_relative 'aws-sdk-timestreaminfluxdb/client'
require_relative 'aws-sdk-timestreaminfluxdb/customizations'
require_relative 'aws-sdk-timestreaminfluxdb/errors'
require_relative 'aws-sdk-timestreaminfluxdb/endpoint_parameters'
require_relative 'aws-sdk-timestreaminfluxdb/endpoint_provider'
require_relative 'aws-sdk-timestreaminfluxdb/waiters'
