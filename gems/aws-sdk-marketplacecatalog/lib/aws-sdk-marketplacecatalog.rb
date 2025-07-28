# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacecatalog)

# This module provides support for AWS Marketplace Catalog Service. This module is available in the
# `aws-sdk-marketplacecatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_catalog = Aws::MarketplaceCatalog::Client.new
#     resp = marketplace_catalog.batch_describe_entities(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Catalog Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceCatalog::Errors::ServiceError
#       # rescues all AWS Marketplace Catalog Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceCatalog
  autoload :Types, 'aws-sdk-marketplacecatalog/types'
  autoload :ClientApi, 'aws-sdk-marketplacecatalog/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacecatalog/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacecatalog/client'
  autoload :Errors, 'aws-sdk-marketplacecatalog/errors'
  autoload :Resource, 'aws-sdk-marketplacecatalog/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacecatalog/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacecatalog/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacecatalog/endpoints'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-marketplacecatalog/customizations'
