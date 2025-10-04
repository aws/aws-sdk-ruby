# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTManagedIntegrations', Module.new) unless Aws.const_defined?('IoTManagedIntegrations')

# @title Managed integrations for AWS IoT Device Management
# Managed integrations is a feature of AWS IoT Device Management that enables developers to quickly build innovative IoT solutions. Customers can use managed integrations to automate device setup workflows and support interoperability across many devices, regardless of device vendor or connectivity protocol. This allows developers to use a single user-interface to control, manage, and operate a range of devices.
module Aws::IoTManagedIntegrations
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotmanagedintegrations/types'
require_relative 'aws-sdk-iotmanagedintegrations/paginators'
require_relative 'aws-sdk-iotmanagedintegrations/schema'
require_relative 'aws-sdk-iotmanagedintegrations/auth_parameters'
require_relative 'aws-sdk-iotmanagedintegrations/auth_resolver'
require_relative 'aws-sdk-iotmanagedintegrations/client'
require_relative 'aws-sdk-iotmanagedintegrations/customizations'
require_relative 'aws-sdk-iotmanagedintegrations/errors'
require_relative 'aws-sdk-iotmanagedintegrations/endpoint_parameters'
require_relative 'aws-sdk-iotmanagedintegrations/endpoint_provider'
require_relative 'aws-sdk-iotmanagedintegrations/waiters'
