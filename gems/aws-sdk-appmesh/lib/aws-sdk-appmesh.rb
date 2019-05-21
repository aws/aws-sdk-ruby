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
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS App Mesh all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppMesh::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::AppMesh

  GEM_VERSION = '1.9.0'

end
