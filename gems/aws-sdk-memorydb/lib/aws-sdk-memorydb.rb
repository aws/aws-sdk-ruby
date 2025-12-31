# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:memorydb)

# This module provides support for Amazon MemoryDB. This module is available in the
# `aws-sdk-memorydb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     memory_db = Aws::MemoryDB::Client.new
#     resp = memory_db.batch_update_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon MemoryDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MemoryDB::Errors::ServiceError
#       # rescues all Amazon MemoryDB API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MemoryDB
  autoload :Types, 'aws-sdk-memorydb/types'
  autoload :ClientApi, 'aws-sdk-memorydb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-memorydb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-memorydb/client'
  autoload :Errors, 'aws-sdk-memorydb/errors'
  autoload :Resource, 'aws-sdk-memorydb/resource'
  autoload :EndpointParameters, 'aws-sdk-memorydb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-memorydb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-memorydb/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-memorydb/customizations'
