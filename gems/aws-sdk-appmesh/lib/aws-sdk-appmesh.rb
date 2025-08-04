# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appmesh)

# This module provides support for AWS App Mesh. This module is available in the
# `aws-sdk-appmesh` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_mesh = Aws::AppMesh::Client.new
#     resp = app_mesh.create_gateway_route(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS App Mesh are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppMesh::Errors::ServiceError
#       # rescues all AWS App Mesh API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppMesh
  autoload :Types, 'aws-sdk-appmesh/types'
  autoload :ClientApi, 'aws-sdk-appmesh/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appmesh/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appmesh/client'
  autoload :Errors, 'aws-sdk-appmesh/errors'
  autoload :Resource, 'aws-sdk-appmesh/resource'
  autoload :EndpointParameters, 'aws-sdk-appmesh/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appmesh/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appmesh/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-appmesh/customizations'
