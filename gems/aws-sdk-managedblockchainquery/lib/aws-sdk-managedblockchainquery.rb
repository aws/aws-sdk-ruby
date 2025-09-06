# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ManagedBlockchainQuery', Module.new) unless Aws.const_defined?('ManagedBlockchainQuery')

# @title Amazon Managed Blockchain Query
# <p>Amazon Managed Blockchain (AMB) Query provides you with convenient access to multi-blockchain network data, which makes 
#         it easier for you to extract contextual data related to blockchain activity. You can use AMB Query to 
#         read data from public blockchain networks, such as Bitcoin Mainnet and Ethereum Mainnet. You can 
#         also get information such as the current and historical balances of addresses, or you can get a 
#         list of blockchain transactions for a given time period. Additionally, you can get details of a 
#         given transaction, such as transaction events, which you can further analyze or use in business 
#         logic for your applications.</p>
module Aws::ManagedBlockchainQuery
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-managedblockchainquery/types'
require_relative 'aws-sdk-managedblockchainquery/paginators'
require_relative 'aws-sdk-managedblockchainquery/schema'
require_relative 'aws-sdk-managedblockchainquery/auth_parameters'
require_relative 'aws-sdk-managedblockchainquery/auth_resolver'
require_relative 'aws-sdk-managedblockchainquery/client'
require_relative 'aws-sdk-managedblockchainquery/customizations'
require_relative 'aws-sdk-managedblockchainquery/errors'
require_relative 'aws-sdk-managedblockchainquery/endpoint_parameters'
require_relative 'aws-sdk-managedblockchainquery/endpoint_provider'
require_relative 'aws-sdk-managedblockchainquery/waiters'
