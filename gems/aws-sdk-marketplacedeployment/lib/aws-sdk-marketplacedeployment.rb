# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceDeployment', Module.new) unless Aws.const_defined?('MarketplaceDeployment')

# @title AWS Marketplace Deployment Service
# <p>The AWS Marketplace Deployment Service supports the Quick Launch experience, which is a deployment option for software as a service (SaaS) products. 
#       Quick Launch simplifies and reduces the time, resources, and steps required to configure, deploy, and launch a products. 
#       The AWS Marketplace Deployment Service provides sellers with a secure method for passing deployment parameters, such as 
#       API keys and external IDs, to buyers during the Quick Launch experience.</p>
module Aws::MarketplaceDeployment
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplacedeployment/types'
require_relative 'aws-sdk-marketplacedeployment/paginators'
require_relative 'aws-sdk-marketplacedeployment/schema'
require_relative 'aws-sdk-marketplacedeployment/auth_parameters'
require_relative 'aws-sdk-marketplacedeployment/auth_resolver'
require_relative 'aws-sdk-marketplacedeployment/client'
require_relative 'aws-sdk-marketplacedeployment/errors'
require_relative 'aws-sdk-marketplacedeployment/endpoint_parameters'
require_relative 'aws-sdk-marketplacedeployment/endpoint_provider'
require_relative 'aws-sdk-marketplacedeployment/waiters'
require_relative 'aws-sdk-marketplacedeployment/customizations'
