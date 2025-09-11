# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SnowDeviceManagement', Module.new) unless Aws.const_defined?('SnowDeviceManagement')

# @title AWS Snow Device Management
# <p>Amazon Web Services Snow Device Management documentation.</p>
module Aws::SnowDeviceManagement
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-snowdevicemanagement/types'
require_relative 'aws-sdk-snowdevicemanagement/paginators'
require_relative 'aws-sdk-snowdevicemanagement/schema'
require_relative 'aws-sdk-snowdevicemanagement/auth_parameters'
require_relative 'aws-sdk-snowdevicemanagement/auth_resolver'
require_relative 'aws-sdk-snowdevicemanagement/client'
require_relative 'aws-sdk-snowdevicemanagement/customizations'
require_relative 'aws-sdk-snowdevicemanagement/errors'
require_relative 'aws-sdk-snowdevicemanagement/endpoint_parameters'
require_relative 'aws-sdk-snowdevicemanagement/endpoint_provider'
require_relative 'aws-sdk-snowdevicemanagement/waiters'
