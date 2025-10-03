# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTTwinMaker', Module.new) unless Aws.const_defined?('IoTTwinMaker')

# @title AWS IoT TwinMaker
# <p>IoT TwinMaker is a service with which you can
#          build operational digital twins of physical systems. IoT TwinMaker overlays measurements
#          and analysis from real-world sensors, cameras, and enterprise applications so you can
#          create data visualizations to monitor your physical factory, building, or industrial plant.
#          You can use this real-world data to monitor operations and diagnose and repair
#          errors.</p>
module Aws::IoTTwinMaker
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iottwinmaker/types'
require_relative 'aws-sdk-iottwinmaker/paginators'
require_relative 'aws-sdk-iottwinmaker/schema'
require_relative 'aws-sdk-iottwinmaker/auth_parameters'
require_relative 'aws-sdk-iottwinmaker/auth_resolver'
require_relative 'aws-sdk-iottwinmaker/client'
require_relative 'aws-sdk-iottwinmaker/customizations'
require_relative 'aws-sdk-iottwinmaker/errors'
require_relative 'aws-sdk-iottwinmaker/endpoint_parameters'
require_relative 'aws-sdk-iottwinmaker/endpoint_provider'
require_relative 'aws-sdk-iottwinmaker/waiters'
