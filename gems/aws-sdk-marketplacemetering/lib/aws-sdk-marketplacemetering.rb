# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacemetering)

# This module provides support for AWSMarketplace Metering. This module is available in the
# `aws-sdk-marketplacemetering` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_metering = Aws::MarketplaceMetering::Client.new
#     resp = marketplace_metering.batch_meter_usage(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSMarketplace Metering are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceMetering::Errors::ServiceError
#       # rescues all AWSMarketplace Metering API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceMetering
  autoload :Types, 'aws-sdk-marketplacemetering/types'
  autoload :ClientApi, 'aws-sdk-marketplacemetering/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacemetering/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacemetering/client'
  autoload :Errors, 'aws-sdk-marketplacemetering/errors'
  autoload :Resource, 'aws-sdk-marketplacemetering/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacemetering/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacemetering/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacemetering/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-marketplacemetering/customizations'
