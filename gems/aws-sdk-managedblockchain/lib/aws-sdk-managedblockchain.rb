# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-managedblockchain/types'
require_relative 'aws-sdk-managedblockchain/client_api'
require_relative 'aws-sdk-managedblockchain/client'
require_relative 'aws-sdk-managedblockchain/errors'
require_relative 'aws-sdk-managedblockchain/resource'
require_relative 'aws-sdk-managedblockchain/customizations'

# This module provides support for Amazon Managed Blockchain. This module is available in the
# `aws-sdk-managedblockchain` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     managed_blockchain = Aws::ManagedBlockchain::Client.new
#     resp = managed_blockchain.create_member(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Managed Blockchain are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ManagedBlockchain::Errors::ServiceError
#       # rescues all Amazon Managed Blockchain API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ManagedBlockchain

  GEM_VERSION = '1.17.0'

end
