# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IotDeviceAdvisor', Module.new) unless Aws.const_defined?('IotDeviceAdvisor')

# @title AWS IoT Core Device Advisor
# <p>Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test capability for validating IoT
#             devices during device software development. Device Advisor provides pre-built tests that you
#             can use to validate IoT devices for reliable and secure connectivity with Amazon Web Services IoT Core
#             before deploying devices to production. By using Device Advisor, you can confirm that your
#             devices can connect to Amazon Web Services IoT Core, follow security best practices and, if applicable,
#             receive software updates from IoT Device Management. You can also download signed
#             qualification reports to submit to the Amazon Web Services Partner Network to get your device
#             qualified for the Amazon Web Services Partner Device Catalog without the need to send your device in
#             and wait for it to be tested.</p>
module Aws::IotDeviceAdvisor
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotdeviceadvisor/types'
require_relative 'aws-sdk-iotdeviceadvisor/paginators'
require_relative 'aws-sdk-iotdeviceadvisor/schema'
require_relative 'aws-sdk-iotdeviceadvisor/auth_parameters'
require_relative 'aws-sdk-iotdeviceadvisor/auth_resolver'
require_relative 'aws-sdk-iotdeviceadvisor/client'
require_relative 'aws-sdk-iotdeviceadvisor/customizations'
require_relative 'aws-sdk-iotdeviceadvisor/errors'
require_relative 'aws-sdk-iotdeviceadvisor/endpoint_parameters'
require_relative 'aws-sdk-iotdeviceadvisor/endpoint_provider'
require_relative 'aws-sdk-iotdeviceadvisor/waiters'
