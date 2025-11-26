# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SupplyChain', Module.new) unless Aws.const_defined?('SupplyChain')

# @title AWS Supply Chain
# <p>
#             AWS Supply Chain is a cloud-based application that works with your enterprise resource planning (ERP) and supply chain management systems. Using AWS Supply Chain, you can connect and extract your inventory, supply, and demand related data from existing ERP or supply chain systems into a single data model.
#         </p>
#          <p>The AWS Supply Chain API supports configuration data import for Supply Planning.</p>
#          <p>
#             All AWS Supply chain API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies.
#         </p>
module Aws::SupplyChain
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-supplychain/types'
require_relative 'aws-sdk-supplychain/paginators'
require_relative 'aws-sdk-supplychain/schema'
require_relative 'aws-sdk-supplychain/auth_parameters'
require_relative 'aws-sdk-supplychain/auth_resolver'
require_relative 'aws-sdk-supplychain/client'
require_relative 'aws-sdk-supplychain/errors'
require_relative 'aws-sdk-supplychain/endpoint_parameters'
require_relative 'aws-sdk-supplychain/endpoint_provider'
require_relative 'aws-sdk-supplychain/waiters'
require_relative 'aws-sdk-supplychain/customizations'
