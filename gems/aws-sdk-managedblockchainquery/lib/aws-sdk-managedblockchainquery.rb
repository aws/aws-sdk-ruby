# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:managedblockchainquery)

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
  autoload :Types, 'aws-sdk-managedblockchainquery/types'
  autoload :ClientApi, 'aws-sdk-managedblockchainquery/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-managedblockchainquery/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-managedblockchainquery/client'
  autoload :Errors, 'aws-sdk-managedblockchainquery/errors'
  autoload :Waiters, 'aws-sdk-managedblockchainquery/waiters'
  autoload :Resource, 'aws-sdk-managedblockchainquery/resource'
  autoload :EndpointParameters, 'aws-sdk-managedblockchainquery/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-managedblockchainquery/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-managedblockchainquery/endpoints'

  GEM_VERSION = '1.31.0'

end

require_relative 'aws-sdk-managedblockchainquery/customizations'
