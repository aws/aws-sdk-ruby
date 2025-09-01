# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceEntitlementService', Module.new) unless Aws.const_defined?('MarketplaceEntitlementService')

# @title AWS Marketplace Entitlement Service
# <fullname>AWS Marketplace Entitlement Service</fullname>
#          <p>This reference provides descriptions of the AWS Marketplace Entitlement Service
#    API.</p>
#          <p>AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to
#       a given product. An entitlement represents capacity in a product owned by the customer. For
#       example, a customer might own some number of users or seats in an SaaS application or some
#       amount of data capacity in a multi-tenant database.</p>
#          <p>
#             <b>Getting Entitlement Records</b>
#          </p>
#          <ul>
#             <li>
#                <p>
#                   <i>GetEntitlements</i>- Gets the entitlements for a Marketplace
#      product.</p>
#             </li>
#          </ul>
module Aws::MarketplaceEntitlementService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplaceentitlementservice/types'
require_relative 'aws-sdk-marketplaceentitlementservice/paginators'
require_relative 'aws-sdk-marketplaceentitlementservice/schema'
require_relative 'aws-sdk-marketplaceentitlementservice/auth_parameters'
require_relative 'aws-sdk-marketplaceentitlementservice/auth_resolver'
require_relative 'aws-sdk-marketplaceentitlementservice/client'
require_relative 'aws-sdk-marketplaceentitlementservice/customizations'
require_relative 'aws-sdk-marketplaceentitlementservice/errors'
require_relative 'aws-sdk-marketplaceentitlementservice/endpoint_parameters'
require_relative 'aws-sdk-marketplaceentitlementservice/endpoint_provider'
require_relative 'aws-sdk-marketplaceentitlementservice/waiters'
