# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:storagegateway)

# This module provides support for AWS Storage Gateway. This module is available in the
# `aws-sdk-storagegateway` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     storage_gateway = Aws::StorageGateway::Client.new
#     resp = storage_gateway.activate_gateway(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Storage Gateway are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::StorageGateway::Errors::ServiceError
#       # rescues all AWS Storage Gateway API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::StorageGateway
  autoload :Types, 'aws-sdk-storagegateway/types'
  autoload :ClientApi, 'aws-sdk-storagegateway/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-storagegateway/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-storagegateway/client'
  autoload :Errors, 'aws-sdk-storagegateway/errors'
  autoload :Resource, 'aws-sdk-storagegateway/resource'
  autoload :EndpointParameters, 'aws-sdk-storagegateway/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-storagegateway/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-storagegateway/endpoints'

  GEM_VERSION = '1.112.0'

end

require_relative 'aws-sdk-storagegateway/customizations'
