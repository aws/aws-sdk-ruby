# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:savingsplans)

# This module provides support for AWS Savings Plans. This module is available in the
# `aws-sdk-savingsplans` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     savings_plans = Aws::SavingsPlans::Client.new
#     resp = savings_plans.create_savings_plan(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Savings Plans are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SavingsPlans::Errors::ServiceError
#       # rescues all AWS Savings Plans API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SavingsPlans
  autoload :Types, 'aws-sdk-savingsplans/types'
  autoload :ClientApi, 'aws-sdk-savingsplans/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-savingsplans/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-savingsplans/client'
  autoload :Errors, 'aws-sdk-savingsplans/errors'
  autoload :Resource, 'aws-sdk-savingsplans/resource'
  autoload :EndpointParameters, 'aws-sdk-savingsplans/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-savingsplans/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-savingsplans/endpoints'

  GEM_VERSION = '1.67.0'

end

require_relative 'aws-sdk-savingsplans/customizations'
