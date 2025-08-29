# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:opensearchservice)

# This module provides support for Amazon OpenSearch Service. This module is available in the
# `aws-sdk-opensearchservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     open_search_service = Aws::OpenSearchService::Client.new
#     resp = open_search_service.accept_inbound_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon OpenSearch Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpenSearchService::Errors::ServiceError
#       # rescues all Amazon OpenSearch Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpenSearchService
  autoload :Types, 'aws-sdk-opensearchservice/types'
  autoload :ClientApi, 'aws-sdk-opensearchservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-opensearchservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-opensearchservice/client'
  autoload :Errors, 'aws-sdk-opensearchservice/errors'
  autoload :Resource, 'aws-sdk-opensearchservice/resource'
  autoload :EndpointParameters, 'aws-sdk-opensearchservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-opensearchservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-opensearchservice/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-opensearchservice/customizations'
