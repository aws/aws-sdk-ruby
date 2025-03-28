# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediaconnect)

# This module provides support for AWS MediaConnect. This module is available in the
# `aws-sdk-mediaconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_connect = Aws::MediaConnect::Client.new
#     resp = media_connect.add_bridge_outputs(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS MediaConnect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaConnect::Errors::ServiceError
#       # rescues all AWS MediaConnect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaConnect
  autoload :Types, 'aws-sdk-mediaconnect/types'
  autoload :ClientApi, 'aws-sdk-mediaconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediaconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediaconnect/client'
  autoload :Errors, 'aws-sdk-mediaconnect/errors'
  autoload :Waiters, 'aws-sdk-mediaconnect/waiters'
  autoload :Resource, 'aws-sdk-mediaconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-mediaconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediaconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediaconnect/endpoints'

  GEM_VERSION = '1.78.0'

end

require_relative 'aws-sdk-mediaconnect/customizations'
