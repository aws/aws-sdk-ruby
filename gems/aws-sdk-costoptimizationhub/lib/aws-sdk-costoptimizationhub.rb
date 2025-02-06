# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:costoptimizationhub)

# This module provides support for Cost Optimization Hub. This module is available in the
# `aws-sdk-costoptimizationhub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cost_optimization_hub = Aws::CostOptimizationHub::Client.new
#     resp = cost_optimization_hub.get_preferences(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Cost Optimization Hub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CostOptimizationHub::Errors::ServiceError
#       # rescues all Cost Optimization Hub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CostOptimizationHub
  autoload :Types, 'aws-sdk-costoptimizationhub/types'
  autoload :ClientApi, 'aws-sdk-costoptimizationhub/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-costoptimizationhub/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-costoptimizationhub/client'
  autoload :Errors, 'aws-sdk-costoptimizationhub/errors'
  autoload :Waiters, 'aws-sdk-costoptimizationhub/waiters'
  autoload :Resource, 'aws-sdk-costoptimizationhub/resource'
  autoload :EndpointParameters, 'aws-sdk-costoptimizationhub/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-costoptimizationhub/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-costoptimizationhub/endpoints'

  GEM_VERSION = '1.21.0'

end

require_relative 'aws-sdk-costoptimizationhub/customizations'
