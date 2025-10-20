# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplaceentitlementservice)

# This module provides support for AWS Marketplace Entitlement Service. This module is available in the
# `aws-sdk-marketplaceentitlementservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_entitlement_service = Aws::MarketplaceEntitlementService::Client.new
#     resp = marketplace_entitlement_service.get_entitlements(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Entitlement Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceEntitlementService::Errors::ServiceError
#       # rescues all AWS Marketplace Entitlement Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceEntitlementService
  autoload :Types, 'aws-sdk-marketplaceentitlementservice/types'
  autoload :ClientApi, 'aws-sdk-marketplaceentitlementservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplaceentitlementservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplaceentitlementservice/client'
  autoload :Errors, 'aws-sdk-marketplaceentitlementservice/errors'
  autoload :Resource, 'aws-sdk-marketplaceentitlementservice/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplaceentitlementservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplaceentitlementservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplaceentitlementservice/endpoints'

  GEM_VERSION = '1.78.0'

end

require_relative 'aws-sdk-marketplaceentitlementservice/customizations'
