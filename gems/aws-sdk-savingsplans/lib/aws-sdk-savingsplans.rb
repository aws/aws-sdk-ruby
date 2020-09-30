# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-savingsplans/types'
require_relative 'aws-sdk-savingsplans/client_api'
require_relative 'aws-sdk-savingsplans/client'
require_relative 'aws-sdk-savingsplans/errors'
require_relative 'aws-sdk-savingsplans/resource'
require_relative 'aws-sdk-savingsplans/customizations'

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

  GEM_VERSION = '1.12.0'

end
