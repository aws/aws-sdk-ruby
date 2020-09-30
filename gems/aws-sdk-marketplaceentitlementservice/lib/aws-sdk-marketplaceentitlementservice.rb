# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-marketplaceentitlementservice/types'
require_relative 'aws-sdk-marketplaceentitlementservice/client_api'
require_relative 'aws-sdk-marketplaceentitlementservice/client'
require_relative 'aws-sdk-marketplaceentitlementservice/errors'
require_relative 'aws-sdk-marketplaceentitlementservice/resource'
require_relative 'aws-sdk-marketplaceentitlementservice/customizations'

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

  GEM_VERSION = '1.24.0'

end
