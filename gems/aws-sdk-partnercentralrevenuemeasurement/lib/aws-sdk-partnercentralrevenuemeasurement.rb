# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PartnerCentralRevenueMeasurement', Module.new) unless Aws.const_defined?('PartnerCentralRevenueMeasurement')

# @title Partner Central Revenue Measurement API
# <p>AWS Partner Central Revenue Measurement API for creating, managing, and tracking revenue attributions and their allocations with deal entities such as offers and opportunities.</p>
module Aws::PartnerCentralRevenueMeasurement
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-partnercentralrevenuemeasurement/types'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/paginators'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/schema'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/auth_parameters'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/auth_resolver'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/client'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/errors'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/endpoint_parameters'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/endpoint_provider'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/waiters'
require_relative 'aws-sdk-partnercentralrevenuemeasurement/customizations'
