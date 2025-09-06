# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Tnb', Module.new) unless Aws.const_defined?('Tnb')

# @title AWS Telco Network Builder
# <p>
#          Amazon Web Services Telco Network Builder (TNB) is a network automation service that helps
#          you deploy and manage telecom networks. AWS TNB helps you with the lifecycle management of
#          your telecommunication network functions throughout planning, deployment, and
#          post-deployment activities.</p>
module Aws::Tnb
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-tnb/types'
require_relative 'aws-sdk-tnb/paginators'
require_relative 'aws-sdk-tnb/schema'
require_relative 'aws-sdk-tnb/auth_parameters'
require_relative 'aws-sdk-tnb/auth_resolver'
require_relative 'aws-sdk-tnb/client'
require_relative 'aws-sdk-tnb/customizations'
require_relative 'aws-sdk-tnb/errors'
require_relative 'aws-sdk-tnb/endpoint_parameters'
require_relative 'aws-sdk-tnb/endpoint_provider'
require_relative 'aws-sdk-tnb/waiters'
