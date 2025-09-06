# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ManagedBlockchain', Module.new) unless Aws.const_defined?('ManagedBlockchain')

# @title Amazon Managed Blockchain
# <p></p>
#          <p>Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open-source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority.</p>
#          <p>Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source frameworks. Because of fundamental differences between the frameworks, some API actions or data types may only apply in the context of one framework and not the other. For example, actions related to Hyperledger Fabric network members such as <code>CreateMember</code> and <code>DeleteMember</code> don't apply to Ethereum.</p>
#          <p>The description for each action indicates the framework or frameworks to which it applies. Data types and properties that apply only in the context of a particular framework are similarly indicated.</p>
module Aws::ManagedBlockchain
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-managedblockchain/types'
require_relative 'aws-sdk-managedblockchain/paginators'
require_relative 'aws-sdk-managedblockchain/schema'
require_relative 'aws-sdk-managedblockchain/auth_parameters'
require_relative 'aws-sdk-managedblockchain/auth_resolver'
require_relative 'aws-sdk-managedblockchain/client'
require_relative 'aws-sdk-managedblockchain/customizations'
require_relative 'aws-sdk-managedblockchain/errors'
require_relative 'aws-sdk-managedblockchain/endpoint_parameters'
require_relative 'aws-sdk-managedblockchain/endpoint_provider'
require_relative 'aws-sdk-managedblockchain/waiters'
