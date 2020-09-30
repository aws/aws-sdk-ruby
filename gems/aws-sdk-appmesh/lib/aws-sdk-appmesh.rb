# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appmesh/types'
require_relative 'aws-sdk-appmesh/client_api'
require_relative 'aws-sdk-appmesh/client'
require_relative 'aws-sdk-appmesh/errors'
require_relative 'aws-sdk-appmesh/resource'
require_relative 'aws-sdk-appmesh/customizations'

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

  GEM_VERSION = '1.31.0'

end
