# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('HealthLake', Module.new) unless Aws.const_defined?('HealthLake')

# @title Amazon HealthLake
# <p>AWS HealthLake is a HIPAA eligibile service that allows customers to store,
#          transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.</p>
module Aws::HealthLake
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-healthlake/types'
require_relative 'aws-sdk-healthlake/paginators'
require_relative 'aws-sdk-healthlake/schema'
require_relative 'aws-sdk-healthlake/auth_parameters'
require_relative 'aws-sdk-healthlake/auth_resolver'
require_relative 'aws-sdk-healthlake/client'
require_relative 'aws-sdk-healthlake/customizations'
require_relative 'aws-sdk-healthlake/errors'
require_relative 'aws-sdk-healthlake/endpoint_parameters'
require_relative 'aws-sdk-healthlake/endpoint_provider'
require_relative 'aws-sdk-healthlake/waiters'
