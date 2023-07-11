# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-budgets/types'
require_relative 'aws-sdk-budgets/client_api'
require_relative 'aws-sdk-budgets/plugins/endpoints.rb'
require_relative 'aws-sdk-budgets/client'
require_relative 'aws-sdk-budgets/errors'
require_relative 'aws-sdk-budgets/resource'
require_relative 'aws-sdk-budgets/endpoint_parameters'
require_relative 'aws-sdk-budgets/endpoint_provider'
require_relative 'aws-sdk-budgets/endpoints'
require_relative 'aws-sdk-budgets/customizations'

# This module provides support for AWS Budgets. This module is available in the
# `aws-sdk-budgets` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     budgets = Aws::Budgets::Client.new
#     resp = budgets.create_budget(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Budgets are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Budgets::Errors::ServiceError
#       # rescues all AWS Budgets API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Budgets

  GEM_VERSION = '1.57.0'

end
