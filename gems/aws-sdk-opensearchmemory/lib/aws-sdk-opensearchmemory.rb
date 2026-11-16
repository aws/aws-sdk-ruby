# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:opensearchmemory)

# This module provides support for Amazon OpenSearch Memory. This module is available in the
# `aws-sdk-opensearchmemory` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     open_search_memory = Aws::OpenSearchMemory::Client.new
#     resp = open_search_memory.batch_get_event(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon OpenSearch Memory are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpenSearchMemory::Errors::ServiceError
#       # rescues all Amazon OpenSearch Memory API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpenSearchMemory
  autoload :Types, 'aws-sdk-opensearchmemory/types'
  autoload :ClientApi, 'aws-sdk-opensearchmemory/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-opensearchmemory/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-opensearchmemory/client'
  autoload :Errors, 'aws-sdk-opensearchmemory/errors'
  autoload :Waiters, 'aws-sdk-opensearchmemory/waiters'
  autoload :Resource, 'aws-sdk-opensearchmemory/resource'
  autoload :EndpointParameters, 'aws-sdk-opensearchmemory/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-opensearchmemory/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-opensearchmemory/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-opensearchmemory/customizations'
