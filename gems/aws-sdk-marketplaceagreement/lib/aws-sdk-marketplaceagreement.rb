# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplaceagreement)

# This module provides support for AWS Marketplace Agreement Service. This module is available in the
# `aws-sdk-marketplaceagreement` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_agreement = Aws::MarketplaceAgreement::Client.new
#     resp = marketplace_agreement.describe_agreement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Agreement Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceAgreement::Errors::ServiceError
#       # rescues all AWS Marketplace Agreement Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceAgreement
  autoload :Types, 'aws-sdk-marketplaceagreement/types'
  autoload :ClientApi, 'aws-sdk-marketplaceagreement/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplaceagreement/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplaceagreement/client'
  autoload :Errors, 'aws-sdk-marketplaceagreement/errors'
  autoload :Resource, 'aws-sdk-marketplaceagreement/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplaceagreement/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplaceagreement/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplaceagreement/endpoints'

  GEM_VERSION = '1.22.0'

end

require_relative 'aws-sdk-marketplaceagreement/customizations'
