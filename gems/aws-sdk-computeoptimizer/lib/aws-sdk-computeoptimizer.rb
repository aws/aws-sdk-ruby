# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-computeoptimizer/types'
require_relative 'aws-sdk-computeoptimizer/client_api'
require_relative 'aws-sdk-computeoptimizer/client'
require_relative 'aws-sdk-computeoptimizer/errors'
require_relative 'aws-sdk-computeoptimizer/resource'
require_relative 'aws-sdk-computeoptimizer/customizations'

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
#     resp = compute_optimizer.describe_recommendation_export_jobs(params)
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

  GEM_VERSION = '1.9.0'

end
