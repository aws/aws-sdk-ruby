# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CostOptimizationHub', Module.new) unless Aws.const_defined?('CostOptimizationHub')

# @title Cost Optimization Hub
# <p>You can use the Cost Optimization Hub API to programmatically identify, filter, aggregate, and quantify savings for your cost optimization recommendations across multiple Amazon Web Services Regions and Amazon Web Services accounts in your organization.</p> <p>The Cost Optimization Hub API provides the following endpoint:</p> <ul> <li> <p> https://cost-optimization-hub.us-east-1.amazonaws.com </p> </li> </ul>
module Aws::CostOptimizationHub
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-costoptimizationhub/types'
require_relative 'aws-sdk-costoptimizationhub/paginators'
require_relative 'aws-sdk-costoptimizationhub/schema'
require_relative 'aws-sdk-costoptimizationhub/auth_parameters'
require_relative 'aws-sdk-costoptimizationhub/auth_resolver'
require_relative 'aws-sdk-costoptimizationhub/client'
require_relative 'aws-sdk-costoptimizationhub/customizations'
require_relative 'aws-sdk-costoptimizationhub/errors'
require_relative 'aws-sdk-costoptimizationhub/endpoint_parameters'
require_relative 'aws-sdk-costoptimizationhub/endpoint_provider'
require_relative 'aws-sdk-costoptimizationhub/waiters'
