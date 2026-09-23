# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:networksecuritymanager)

# This module provides support for AWS Network Security Manager Customer API. This module is available in the
# `aws-sdk-networksecuritymanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_security_manager = Aws::NetworkSecurityManager::Client.new
#     resp = network_security_manager.create_deployment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Network Security Manager Customer API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkSecurityManager::Errors::ServiceError
#       # rescues all AWS Network Security Manager Customer API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkSecurityManager
  autoload :Types, 'aws-sdk-networksecuritymanager/types'
  autoload :ClientApi, 'aws-sdk-networksecuritymanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-networksecuritymanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-networksecuritymanager/client'
  autoload :Errors, 'aws-sdk-networksecuritymanager/errors'
  autoload :Waiters, 'aws-sdk-networksecuritymanager/waiters'
  autoload :Resource, 'aws-sdk-networksecuritymanager/resource'
  autoload :EndpointParameters, 'aws-sdk-networksecuritymanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-networksecuritymanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-networksecuritymanager/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-networksecuritymanager/customizations'
