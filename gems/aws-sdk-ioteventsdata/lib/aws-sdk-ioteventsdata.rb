# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTEventsData', Module.new) unless Aws.const_defined?('IoTEventsData')

# @title AWS IoT Events Data
# <p>IoT Events monitors your equipment or device fleets for failures or changes in operation, and
#       triggers actions when such events occur. You can use IoT Events Data API commands to send inputs to
#       detectors, list detectors, and view or update a detector's status.</p>
#          <p> For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html">What is IoT Events?</a> in the
#         <i>IoT Events Developer Guide</i>.</p>
module Aws::IoTEventsData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ioteventsdata/types'
require_relative 'aws-sdk-ioteventsdata/paginators'
require_relative 'aws-sdk-ioteventsdata/schema'
require_relative 'aws-sdk-ioteventsdata/auth_parameters'
require_relative 'aws-sdk-ioteventsdata/auth_resolver'
require_relative 'aws-sdk-ioteventsdata/client'
require_relative 'aws-sdk-ioteventsdata/customizations'
require_relative 'aws-sdk-ioteventsdata/errors'
require_relative 'aws-sdk-ioteventsdata/endpoint_parameters'
require_relative 'aws-sdk-ioteventsdata/endpoint_provider'
require_relative 'aws-sdk-ioteventsdata/waiters'
