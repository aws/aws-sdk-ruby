# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Greengrass', Module.new) unless Aws.const_defined?('Greengrass')

# @title AWS Greengrass
# AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
module Aws::Greengrass
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-greengrass/types'
require_relative 'aws-sdk-greengrass/paginators'
require_relative 'aws-sdk-greengrass/schema'
require_relative 'aws-sdk-greengrass/auth_parameters'
require_relative 'aws-sdk-greengrass/auth_resolver'
require_relative 'aws-sdk-greengrass/client'
require_relative 'aws-sdk-greengrass/customizations'
require_relative 'aws-sdk-greengrass/errors'
require_relative 'aws-sdk-greengrass/endpoint_parameters'
require_relative 'aws-sdk-greengrass/endpoint_provider'
require_relative 'aws-sdk-greengrass/waiters'
