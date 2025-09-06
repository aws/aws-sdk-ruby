# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTEvents', Module.new) unless Aws.const_defined?('IoTEvents')

# @title AWS IoT Events
# <p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and
#       triggers actions when such events occur. You can use AWS IoT Events API operations to create, read,
#       update, and delete inputs and detector models, and to list their versions.</p>
module Aws::IoTEvents
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotevents/types'
require_relative 'aws-sdk-iotevents/paginators'
require_relative 'aws-sdk-iotevents/schema'
require_relative 'aws-sdk-iotevents/auth_parameters'
require_relative 'aws-sdk-iotevents/auth_resolver'
require_relative 'aws-sdk-iotevents/client'
require_relative 'aws-sdk-iotevents/customizations'
require_relative 'aws-sdk-iotevents/errors'
require_relative 'aws-sdk-iotevents/endpoint_parameters'
require_relative 'aws-sdk-iotevents/endpoint_provider'
require_relative 'aws-sdk-iotevents/waiters'
