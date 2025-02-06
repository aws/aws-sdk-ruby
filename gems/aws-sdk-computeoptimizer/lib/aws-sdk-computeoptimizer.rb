# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:computeoptimizer)

# This module provides support for AWS Compute Optimizer. This module is available in the
# `aws-sdk-computeoptimizer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     compute_optimizer = Aws::ComputeOptimizer::Client.new
#     resp = compute_optimizer.delete_recommendation_preferences(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Compute Optimizer are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ComputeOptimizer::Errors::ServiceError
#       # rescues all AWS Compute Optimizer API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ComputeOptimizer
  autoload :Types, 'aws-sdk-computeoptimizer/types'
  autoload :ClientApi, 'aws-sdk-computeoptimizer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-computeoptimizer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-computeoptimizer/client'
  autoload :Errors, 'aws-sdk-computeoptimizer/errors'
  autoload :Resource, 'aws-sdk-computeoptimizer/resource'
  autoload :EndpointParameters, 'aws-sdk-computeoptimizer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-computeoptimizer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-computeoptimizer/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-computeoptimizer/customizations'
