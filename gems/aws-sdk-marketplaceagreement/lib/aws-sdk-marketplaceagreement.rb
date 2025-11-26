# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceAgreement', Module.new) unless Aws.const_defined?('MarketplaceAgreement')

# @title AWS Marketplace Agreement Service
# <p>AWS Marketplace is a curated digital catalog that customers can use to find, buy, deploy, and manage third-party software, data, and services to build solutions and run their businesses. The AWS Marketplace Agreement Service provides an API interface that helps AWS Marketplace sellers manage their product-related agreements, including listing, searching, and filtering agreements.</p>
#          <p>To manage agreements in AWS Marketplace, you must ensure that your AWS Identity and
#          Access Management (IAM) policies and roles are set up. The user must have the required
#          policies/permissions that allow them to carry out the actions in AWS:</p>
#          <ul>
#             <li>
#                <p>
#                   <code>DescribeAgreement</code> – Grants permission to users to obtain detailed
#                meta data about any of their agreements.</p>
#             </li>
#             <li>
#                <p>
#                   <code>GetAgreementTerms</code> – Grants permission to users to obtain details
#                about the terms of an agreement.</p>
#             </li>
#             <li>
#                <p>
#                   <code>SearchAgreements</code> – Grants permission to users to search through all
#                their agreements.</p>
#             </li>
#          </ul>
module Aws::MarketplaceAgreement
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplaceagreement/types'
require_relative 'aws-sdk-marketplaceagreement/paginators'
require_relative 'aws-sdk-marketplaceagreement/schema'
require_relative 'aws-sdk-marketplaceagreement/auth_parameters'
require_relative 'aws-sdk-marketplaceagreement/auth_resolver'
require_relative 'aws-sdk-marketplaceagreement/client'
require_relative 'aws-sdk-marketplaceagreement/errors'
require_relative 'aws-sdk-marketplaceagreement/endpoint_parameters'
require_relative 'aws-sdk-marketplaceagreement/endpoint_provider'
require_relative 'aws-sdk-marketplaceagreement/waiters'
require_relative 'aws-sdk-marketplaceagreement/customizations'
