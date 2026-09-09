# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacediscovery)

# This module provides support for AWS Marketplace Discovery. This module is available in the
# `aws-sdk-marketplacediscovery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_discovery = Aws::MarketplaceDiscovery::Client.new
#     resp = marketplace_discovery.get_listing(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Discovery are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceDiscovery::Errors::ServiceError
#       # rescues all AWS Marketplace Discovery API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceDiscovery
  autoload :Types, 'aws-sdk-marketplacediscovery/types'
  autoload :ClientApi, 'aws-sdk-marketplacediscovery/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacediscovery/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacediscovery/client'
  autoload :Errors, 'aws-sdk-marketplacediscovery/errors'
  autoload :Waiters, 'aws-sdk-marketplacediscovery/waiters'
  autoload :Resource, 'aws-sdk-marketplacediscovery/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacediscovery/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacediscovery/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacediscovery/endpoints'

  GEM_VERSION = '1.7.0'

end

require_relative 'aws-sdk-marketplacediscovery/customizations'
