# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LookoutEquipment', Module.new) unless Aws.const_defined?('LookoutEquipment')

# @title Amazon Lookout for Equipment
# <p>Amazon Lookout for Equipment is a machine learning service that uses advanced analytics to identify
#          anomalies in machines from sensor data for use in predictive maintenance. </p>
module Aws::LookoutEquipment
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lookoutequipment/types'
require_relative 'aws-sdk-lookoutequipment/paginators'
require_relative 'aws-sdk-lookoutequipment/schema'
require_relative 'aws-sdk-lookoutequipment/auth_parameters'
require_relative 'aws-sdk-lookoutequipment/auth_resolver'
require_relative 'aws-sdk-lookoutequipment/client'
require_relative 'aws-sdk-lookoutequipment/customizations'
require_relative 'aws-sdk-lookoutequipment/errors'
require_relative 'aws-sdk-lookoutequipment/endpoint_parameters'
require_relative 'aws-sdk-lookoutequipment/endpoint_provider'
require_relative 'aws-sdk-lookoutequipment/waiters'
