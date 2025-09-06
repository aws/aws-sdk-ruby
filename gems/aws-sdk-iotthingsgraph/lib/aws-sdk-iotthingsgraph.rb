# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTThingsGraph', Module.new) unless Aws.const_defined?('IoTThingsGraph')

# @title AWS IoT Things Graph
# <fullname>AWS IoT Things Graph</fullname>
#          <p>AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, 
#        such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services 
#        and defining how they interact at an abstract level.</p>
#          <p>For more information about how AWS IoT Things Graph works, see the <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html">User Guide</a>.</p>
#          <p>The AWS IoT Things Graph service is discontinued.</p>
module Aws::IoTThingsGraph
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotthingsgraph/types'
require_relative 'aws-sdk-iotthingsgraph/paginators'
require_relative 'aws-sdk-iotthingsgraph/schema'
require_relative 'aws-sdk-iotthingsgraph/auth_parameters'
require_relative 'aws-sdk-iotthingsgraph/auth_resolver'
require_relative 'aws-sdk-iotthingsgraph/client'
require_relative 'aws-sdk-iotthingsgraph/customizations'
require_relative 'aws-sdk-iotthingsgraph/errors'
require_relative 'aws-sdk-iotthingsgraph/endpoint_parameters'
require_relative 'aws-sdk-iotthingsgraph/endpoint_provider'
require_relative 'aws-sdk-iotthingsgraph/waiters'
