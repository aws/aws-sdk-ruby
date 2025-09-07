# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BCMRecommendedActions', Module.new) unless Aws.const_defined?('BCMRecommendedActions')

# @title AWS Billing and Cost Management Recommended Actions
# <p>You can use the Billing and Cost Management Recommended Actions API to programmatically query your best practices and recommendations to optimize your costs.</p> <p>The Billing and Cost Management Recommended Actions API provides the following endpoint:</p> <ul> <li> <p> https://bcm-recommended-actions.us-east-1.api.aws</p> </li> </ul>
module Aws::BCMRecommendedActions
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bcmrecommendedactions/types'
require_relative 'aws-sdk-bcmrecommendedactions/paginators'
require_relative 'aws-sdk-bcmrecommendedactions/schema'
require_relative 'aws-sdk-bcmrecommendedactions/auth_parameters'
require_relative 'aws-sdk-bcmrecommendedactions/auth_resolver'
require_relative 'aws-sdk-bcmrecommendedactions/client'
require_relative 'aws-sdk-bcmrecommendedactions/customizations'
require_relative 'aws-sdk-bcmrecommendedactions/errors'
require_relative 'aws-sdk-bcmrecommendedactions/endpoint_parameters'
require_relative 'aws-sdk-bcmrecommendedactions/endpoint_provider'
require_relative 'aws-sdk-bcmrecommendedactions/waiters'
