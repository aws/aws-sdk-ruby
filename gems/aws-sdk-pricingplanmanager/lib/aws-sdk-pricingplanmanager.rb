# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pricingplanmanager)

# This module provides support for PricingPlanManager. This module is available in the
# `aws-sdk-pricingplanmanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pricing_plan_manager = Aws::PricingPlanManager::Client.new
#     resp = pricing_plan_manager.approve_paid_subscription(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from PricingPlanManager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PricingPlanManager::Errors::ServiceError
#       # rescues all PricingPlanManager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PricingPlanManager
  autoload :Types, 'aws-sdk-pricingplanmanager/types'
  autoload :ClientApi, 'aws-sdk-pricingplanmanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pricingplanmanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pricingplanmanager/client'
  autoload :Errors, 'aws-sdk-pricingplanmanager/errors'
  autoload :Resource, 'aws-sdk-pricingplanmanager/resource'
  autoload :EndpointParameters, 'aws-sdk-pricingplanmanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pricingplanmanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pricingplanmanager/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-pricingplanmanager/customizations'
