# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:networkmanager)

# This module provides support for AWS Network Manager. This module is available in the
# `aws-sdk-networkmanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_manager = Aws::NetworkManager::Client.new
#     resp = network_manager.accept_attachment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Network Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkManager::Errors::ServiceError
#       # rescues all AWS Network Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkManager
  autoload :Types, 'aws-sdk-networkmanager/types'
  autoload :ClientApi, 'aws-sdk-networkmanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-networkmanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-networkmanager/client'
  autoload :Errors, 'aws-sdk-networkmanager/errors'
  autoload :Resource, 'aws-sdk-networkmanager/resource'
  autoload :EndpointParameters, 'aws-sdk-networkmanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-networkmanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-networkmanager/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-networkmanager/customizations'
