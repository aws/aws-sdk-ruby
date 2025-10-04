# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LaunchWizard', Module.new) unless Aws.const_defined?('LaunchWizard')

# @title AWS Launch Wizard
# <p>Launch Wizard offers a guided way of sizing, configuring, and deploying Amazon Web Services resources for
#          third party applications, such as Microsoft SQL Server Always On and HANA based SAP
#          systems, without the need to manually identify and provision individual Amazon Web Services
#          resources.</p>
module Aws::LaunchWizard
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-launchwizard/types'
require_relative 'aws-sdk-launchwizard/paginators'
require_relative 'aws-sdk-launchwizard/schema'
require_relative 'aws-sdk-launchwizard/auth_parameters'
require_relative 'aws-sdk-launchwizard/auth_resolver'
require_relative 'aws-sdk-launchwizard/client'
require_relative 'aws-sdk-launchwizard/customizations'
require_relative 'aws-sdk-launchwizard/errors'
require_relative 'aws-sdk-launchwizard/endpoint_parameters'
require_relative 'aws-sdk-launchwizard/endpoint_provider'
require_relative 'aws-sdk-launchwizard/waiters'
