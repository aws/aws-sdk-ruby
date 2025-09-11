# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Location', Module.new) unless Aws.const_defined?('Location')

# @title Amazon Location Service
# <p>"Suite of geospatial services including Maps, Places, Routes, Tracking, and Geofencing"</p>
module Aws::Location
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-location/types'
require_relative 'aws-sdk-location/paginators'
require_relative 'aws-sdk-location/schema'
require_relative 'aws-sdk-location/auth_parameters'
require_relative 'aws-sdk-location/auth_resolver'
require_relative 'aws-sdk-location/client'
require_relative 'aws-sdk-location/customizations'
require_relative 'aws-sdk-location/errors'
require_relative 'aws-sdk-location/endpoint_parameters'
require_relative 'aws-sdk-location/endpoint_provider'
require_relative 'aws-sdk-location/waiters'
