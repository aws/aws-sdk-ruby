# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codeconnections)

# This module provides support for AWS CodeConnections. This module is available in the
# `aws-sdk-codeconnections` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_connections = Aws::CodeConnections::Client.new
#     resp = code_connections.create_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeConnections are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeConnections::Errors::ServiceError
#       # rescues all AWS CodeConnections API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeConnections
  autoload :Types, 'aws-sdk-codeconnections/types'
  autoload :ClientApi, 'aws-sdk-codeconnections/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codeconnections/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codeconnections/client'
  autoload :Errors, 'aws-sdk-codeconnections/errors'
  autoload :Resource, 'aws-sdk-codeconnections/resource'
  autoload :EndpointParameters, 'aws-sdk-codeconnections/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codeconnections/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codeconnections/endpoints'

  GEM_VERSION = '1.29.0'

end

require_relative 'aws-sdk-codeconnections/customizations'
