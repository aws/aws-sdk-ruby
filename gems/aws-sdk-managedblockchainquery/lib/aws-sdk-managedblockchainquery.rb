# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-managedblockchainquery/types'
require_relative 'aws-sdk-managedblockchainquery/client_api'
require_relative 'aws-sdk-managedblockchainquery/plugins/endpoints.rb'
require_relative 'aws-sdk-managedblockchainquery/client'
require_relative 'aws-sdk-managedblockchainquery/errors'
require_relative 'aws-sdk-managedblockchainquery/waiters'
require_relative 'aws-sdk-managedblockchainquery/resource'
require_relative 'aws-sdk-managedblockchainquery/endpoint_parameters'
require_relative 'aws-sdk-managedblockchainquery/endpoint_provider'
require_relative 'aws-sdk-managedblockchainquery/endpoints'
require_relative 'aws-sdk-managedblockchainquery/customizations'

# This module provides support for Amazon Managed Blockchain Query. This module is available in the
# `aws-sdk-managedblockchainquery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     managed_blockchain_query = Aws::ManagedBlockchainQuery::Client.new
#     resp = managed_blockchain_query.batch_get_token_balance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Managed Blockchain Query are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ManagedBlockchainQuery::Errors::ServiceError
#       # rescues all Amazon Managed Blockchain Query API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ManagedBlockchainQuery

  GEM_VERSION = '1.0.0'

end
