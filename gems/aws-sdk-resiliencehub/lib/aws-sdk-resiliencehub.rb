# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Resiliencehub', Module.new) unless Aws.const_defined?('Resiliencehub')

# @title AWS Resilience Hub
# <p>Resilience Hub helps you proactively prepare and protect your Amazon Web Services applications from
#       disruptions. It offers continual resiliency assessment and validation that integrates
#       into your software development lifecycle. This enables you to uncover resiliency weaknesses,
#       ensure recovery time objective (RTO) and recovery point objective (RPO) targets for your
#       applications are met, and resolve issues before they are released into production. </p>
module Aws::Resiliencehub
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-resiliencehub/types'
require_relative 'aws-sdk-resiliencehub/paginators'
require_relative 'aws-sdk-resiliencehub/schema'
require_relative 'aws-sdk-resiliencehub/auth_parameters'
require_relative 'aws-sdk-resiliencehub/auth_resolver'
require_relative 'aws-sdk-resiliencehub/client'
require_relative 'aws-sdk-resiliencehub/customizations'
require_relative 'aws-sdk-resiliencehub/errors'
require_relative 'aws-sdk-resiliencehub/endpoint_parameters'
require_relative 'aws-sdk-resiliencehub/endpoint_provider'
require_relative 'aws-sdk-resiliencehub/waiters'
