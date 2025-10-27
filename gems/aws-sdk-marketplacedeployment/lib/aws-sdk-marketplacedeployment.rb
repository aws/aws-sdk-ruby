# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacedeployment)

# This module provides support for AWS Marketplace Deployment Service. This module is available in the
# `aws-sdk-marketplacedeployment` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_deployment = Aws::MarketplaceDeployment::Client.new
#     resp = marketplace_deployment.list_tags_for_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Deployment Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceDeployment::Errors::ServiceError
#       # rescues all AWS Marketplace Deployment Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceDeployment
  autoload :Types, 'aws-sdk-marketplacedeployment/types'
  autoload :ClientApi, 'aws-sdk-marketplacedeployment/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacedeployment/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacedeployment/client'
  autoload :Errors, 'aws-sdk-marketplacedeployment/errors'
  autoload :Resource, 'aws-sdk-marketplacedeployment/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacedeployment/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacedeployment/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacedeployment/endpoints'

  GEM_VERSION = '1.27.0'

end

require_relative 'aws-sdk-marketplacedeployment/customizations'
