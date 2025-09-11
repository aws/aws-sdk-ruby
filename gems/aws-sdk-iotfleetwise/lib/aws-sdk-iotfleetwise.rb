# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTFleetWise', Module.new) unless Aws.const_defined?('IoTFleetWise')

# @title AWS IoT FleetWise
# <p>Amazon Web Services IoT FleetWise is a fully managed service that you can use to collect, model, and transfer
#             vehicle data to the Amazon Web Services cloud at scale. With Amazon Web Services IoT FleetWise, you can standardize all of
#             your vehicle data models, independent of the in-vehicle communication architecture, and
#             define data collection rules to transfer only high-value data to the cloud.
#             </p>
#          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/">What is Amazon Web Services IoT FleetWise?</a> in the
#                 <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
#          <important>
#             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
#          </important>
module Aws::IoTFleetWise
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotfleetwise/types'
require_relative 'aws-sdk-iotfleetwise/paginators'
require_relative 'aws-sdk-iotfleetwise/schema'
require_relative 'aws-sdk-iotfleetwise/auth_parameters'
require_relative 'aws-sdk-iotfleetwise/auth_resolver'
require_relative 'aws-sdk-iotfleetwise/client'
require_relative 'aws-sdk-iotfleetwise/customizations'
require_relative 'aws-sdk-iotfleetwise/errors'
require_relative 'aws-sdk-iotfleetwise/endpoint_parameters'
require_relative 'aws-sdk-iotfleetwise/endpoint_provider'
require_relative 'aws-sdk-iotfleetwise/waiters'
