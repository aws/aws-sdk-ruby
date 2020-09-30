# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-autoscalingplans/types'
require_relative 'aws-sdk-autoscalingplans/client_api'
require_relative 'aws-sdk-autoscalingplans/client'
require_relative 'aws-sdk-autoscalingplans/errors'
require_relative 'aws-sdk-autoscalingplans/resource'
require_relative 'aws-sdk-autoscalingplans/customizations'

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

  GEM_VERSION = '1.28.0'

end
