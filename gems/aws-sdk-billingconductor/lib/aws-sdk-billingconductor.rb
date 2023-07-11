# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-billingconductor/types'
require_relative 'aws-sdk-billingconductor/client_api'
require_relative 'aws-sdk-billingconductor/plugins/endpoints.rb'
require_relative 'aws-sdk-billingconductor/client'
require_relative 'aws-sdk-billingconductor/errors'
require_relative 'aws-sdk-billingconductor/waiters'
require_relative 'aws-sdk-billingconductor/resource'
require_relative 'aws-sdk-billingconductor/endpoint_parameters'
require_relative 'aws-sdk-billingconductor/endpoint_provider'
require_relative 'aws-sdk-billingconductor/endpoints'
require_relative 'aws-sdk-billingconductor/customizations'

# This module provides support for AWSBillingConductor. This module is available in the
# `aws-sdk-billingconductor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     billing_conductor = Aws::BillingConductor::Client.new
#     resp = billing_conductor.associate_accounts(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSBillingConductor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BillingConductor::Errors::ServiceError
#       # rescues all AWSBillingConductor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BillingConductor

  GEM_VERSION = '1.12.0'

end
