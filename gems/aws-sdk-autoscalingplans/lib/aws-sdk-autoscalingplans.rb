# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:autoscalingplans)

# This module provides support for AWS Auto Scaling Plans. This module is available in the
# `aws-sdk-autoscalingplans` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     auto_scaling_plans = Aws::AutoScalingPlans::Client.new
#     resp = auto_scaling_plans.create_scaling_plan(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Auto Scaling Plans are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AutoScalingPlans::Errors::ServiceError
#       # rescues all AWS Auto Scaling Plans API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AutoScalingPlans
  autoload :Types, 'aws-sdk-autoscalingplans/types'
  autoload :ClientApi, 'aws-sdk-autoscalingplans/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-autoscalingplans/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-autoscalingplans/client'
  autoload :Errors, 'aws-sdk-autoscalingplans/errors'
  autoload :Resource, 'aws-sdk-autoscalingplans/resource'
  autoload :EndpointParameters, 'aws-sdk-autoscalingplans/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-autoscalingplans/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-autoscalingplans/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-autoscalingplans/customizations'
