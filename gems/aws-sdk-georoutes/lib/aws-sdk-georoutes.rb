# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GeoRoutes', Module.new) unless Aws.const_defined?('GeoRoutes')

# @title Amazon Location Service Routes V2
# <p>With the Amazon Location Routes API you can calculate routes and estimate travel time based on up-to-date road network and live traffic information.</p> <p>Calculate optimal travel routes and estimate travel times using up-to-date road network and traffic data. Key features include:</p> <ul> <li> <p>Point-to-point routing with estimated travel time, distance, and turn-by-turn directions</p> </li> <li> <p>Multi-point route optimization to minimize travel time or distance</p> </li> <li> <p>Route matrices for efficient multi-destination planning</p> </li> <li> <p>Isoline calculations to determine reachable areas within specified time or distance thresholds</p> </li> <li> <p>Map-matching to align GPS traces with the road network</p> </li> </ul>
module Aws::GeoRoutes
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-georoutes/types'
require_relative 'aws-sdk-georoutes/paginators'
require_relative 'aws-sdk-georoutes/schema'
require_relative 'aws-sdk-georoutes/auth_parameters'
require_relative 'aws-sdk-georoutes/auth_resolver'
require_relative 'aws-sdk-georoutes/client'
require_relative 'aws-sdk-georoutes/customizations'
require_relative 'aws-sdk-georoutes/errors'
require_relative 'aws-sdk-georoutes/endpoint_parameters'
require_relative 'aws-sdk-georoutes/endpoint_provider'
require_relative 'aws-sdk-georoutes/waiters'
