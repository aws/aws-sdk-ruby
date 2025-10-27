# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacereporting)

# This module provides support for AWS Marketplace Reporting Service. This module is available in the
# `aws-sdk-marketplacereporting` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_reporting = Aws::MarketplaceReporting::Client.new
#     resp = marketplace_reporting.get_buyer_dashboard(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Reporting Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceReporting::Errors::ServiceError
#       # rescues all AWS Marketplace Reporting Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceReporting
  autoload :Types, 'aws-sdk-marketplacereporting/types'
  autoload :ClientApi, 'aws-sdk-marketplacereporting/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacereporting/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacereporting/client'
  autoload :Errors, 'aws-sdk-marketplacereporting/errors'
  autoload :Waiters, 'aws-sdk-marketplacereporting/waiters'
  autoload :Resource, 'aws-sdk-marketplacereporting/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacereporting/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacereporting/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacereporting/endpoints'

  GEM_VERSION = '1.14.0'

end

require_relative 'aws-sdk-marketplacereporting/customizations'
