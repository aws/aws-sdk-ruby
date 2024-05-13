# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codeconnections/types'
require_relative 'aws-sdk-codeconnections/client_api'
require_relative 'aws-sdk-codeconnections/plugins/endpoints.rb'
require_relative 'aws-sdk-codeconnections/client'
require_relative 'aws-sdk-codeconnections/errors'
require_relative 'aws-sdk-codeconnections/resource'
require_relative 'aws-sdk-codeconnections/endpoint_parameters'
require_relative 'aws-sdk-codeconnections/endpoint_provider'
require_relative 'aws-sdk-codeconnections/endpoints'
require_relative 'aws-sdk-codeconnections/customizations'

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

  GEM_VERSION = '1.2.0'

end
