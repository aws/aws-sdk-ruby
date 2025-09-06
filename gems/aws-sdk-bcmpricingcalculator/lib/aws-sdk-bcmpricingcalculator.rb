# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BCMPricingCalculator', Module.new) unless Aws.const_defined?('BCMPricingCalculator')

# @title AWS Billing and Cost Management Pricing Calculator
# <p> You can use the Pricing Calculator API to programmatically create estimates for your planned cloud use. You can model usage and commitments such as Savings Plans and Reserved Instances, and generate estimated costs using your discounts and benefit sharing preferences. </p> <p>The Pricing Calculator API provides the following endpoint:</p> <ul> <li> <p> <code>https://bcm-pricing-calculator.us-east-1.api.aws</code> </p> </li> </ul>
module Aws::BCMPricingCalculator
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bcmpricingcalculator/types'
require_relative 'aws-sdk-bcmpricingcalculator/paginators'
require_relative 'aws-sdk-bcmpricingcalculator/schema'
require_relative 'aws-sdk-bcmpricingcalculator/auth_parameters'
require_relative 'aws-sdk-bcmpricingcalculator/auth_resolver'
require_relative 'aws-sdk-bcmpricingcalculator/client'
require_relative 'aws-sdk-bcmpricingcalculator/customizations'
require_relative 'aws-sdk-bcmpricingcalculator/errors'
require_relative 'aws-sdk-bcmpricingcalculator/endpoint_parameters'
require_relative 'aws-sdk-bcmpricingcalculator/endpoint_provider'
require_relative 'aws-sdk-bcmpricingcalculator/waiters'
