# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LookoutVision', Module.new) unless Aws.const_defined?('LookoutVision')

# @title Amazon Lookout for Vision
# <p>This is the Amazon Lookout for Vision API Reference. It provides descriptions of actions, 
#       data types, common parameters, and common errors.</p>
#          <p>Amazon Lookout for Vision enables you to find visual defects in industrial products,
#          accurately and at scale. It uses computer vision to identify missing components in an industrial product,
#          damage to vehicles or structures, irregularities in production lines, and even minuscule defects in
#          silicon wafers — or any other physical item where quality is important such as a missing capacitor
#          on printed circuit boards.</p>
module Aws::LookoutVision
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lookoutvision/types'
require_relative 'aws-sdk-lookoutvision/paginators'
require_relative 'aws-sdk-lookoutvision/schema'
require_relative 'aws-sdk-lookoutvision/auth_parameters'
require_relative 'aws-sdk-lookoutvision/auth_resolver'
require_relative 'aws-sdk-lookoutvision/client'
require_relative 'aws-sdk-lookoutvision/errors'
require_relative 'aws-sdk-lookoutvision/endpoint_parameters'
require_relative 'aws-sdk-lookoutvision/endpoint_provider'
require_relative 'aws-sdk-lookoutvision/waiters'
require_relative 'aws-sdk-lookoutvision/customizations'
