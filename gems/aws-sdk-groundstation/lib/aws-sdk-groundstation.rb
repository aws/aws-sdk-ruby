# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GroundStation', Module.new) unless Aws.const_defined?('GroundStation')

# @title AWS Ground Station
# <p>Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that
#       enables you to control satellite communications, downlink and process satellite data, and
#       scale your satellite operations efficiently and cost-effectively without having
#       to build or manage your own ground station infrastructure.</p>
module Aws::GroundStation
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-groundstation/types'
require_relative 'aws-sdk-groundstation/paginators'
require_relative 'aws-sdk-groundstation/schema'
require_relative 'aws-sdk-groundstation/auth_parameters'
require_relative 'aws-sdk-groundstation/auth_resolver'
require_relative 'aws-sdk-groundstation/client'
require_relative 'aws-sdk-groundstation/errors'
require_relative 'aws-sdk-groundstation/endpoint_parameters'
require_relative 'aws-sdk-groundstation/endpoint_provider'
require_relative 'aws-sdk-groundstation/waiters'
require_relative 'aws-sdk-groundstation/customizations'
