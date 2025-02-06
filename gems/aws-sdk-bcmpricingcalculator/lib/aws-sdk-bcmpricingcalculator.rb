# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bcmpricingcalculator)

# This module provides support for AWS Billing and Cost Management Pricing Calculator. This module is available in the
# `aws-sdk-bcmpricingcalculator` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bcm_pricing_calculator = Aws::BCMPricingCalculator::Client.new
#     resp = bcm_pricing_calculator.batch_create_bill_scenario_commitment_modification(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing and Cost Management Pricing Calculator are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BCMPricingCalculator::Errors::ServiceError
#       # rescues all AWS Billing and Cost Management Pricing Calculator API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BCMPricingCalculator
  autoload :Types, 'aws-sdk-bcmpricingcalculator/types'
  autoload :ClientApi, 'aws-sdk-bcmpricingcalculator/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bcmpricingcalculator/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bcmpricingcalculator/client'
  autoload :Errors, 'aws-sdk-bcmpricingcalculator/errors'
  autoload :Waiters, 'aws-sdk-bcmpricingcalculator/waiters'
  autoload :Resource, 'aws-sdk-bcmpricingcalculator/resource'
  autoload :EndpointParameters, 'aws-sdk-bcmpricingcalculator/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bcmpricingcalculator/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bcmpricingcalculator/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-bcmpricingcalculator/customizations'
