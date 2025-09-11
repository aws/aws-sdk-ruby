# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTFleetHub', Module.new) unless Aws.const_defined?('IoTFleetHub')

# @title AWS IoT Fleet Hub
# <p>With Fleet Hub for IoT Device Management you can build stand-alone web applications for monitoring the health of your device fleets.</p>
module Aws::IoTFleetHub
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotfleethub/types'
require_relative 'aws-sdk-iotfleethub/paginators'
require_relative 'aws-sdk-iotfleethub/schema'
require_relative 'aws-sdk-iotfleethub/auth_parameters'
require_relative 'aws-sdk-iotfleethub/auth_resolver'
require_relative 'aws-sdk-iotfleethub/client'
require_relative 'aws-sdk-iotfleethub/customizations'
require_relative 'aws-sdk-iotfleethub/errors'
require_relative 'aws-sdk-iotfleethub/endpoint_parameters'
require_relative 'aws-sdk-iotfleethub/endpoint_provider'
require_relative 'aws-sdk-iotfleethub/waiters'
