# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:billingconductor)

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
  autoload :Types, 'aws-sdk-billingconductor/types'
  autoload :ClientApi, 'aws-sdk-billingconductor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-billingconductor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-billingconductor/client'
  autoload :Errors, 'aws-sdk-billingconductor/errors'
  autoload :Waiters, 'aws-sdk-billingconductor/waiters'
  autoload :Resource, 'aws-sdk-billingconductor/resource'
  autoload :EndpointParameters, 'aws-sdk-billingconductor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-billingconductor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-billingconductor/endpoints'

  GEM_VERSION = '1.41.0'

end

require_relative 'aws-sdk-billingconductor/customizations'
