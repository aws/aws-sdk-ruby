# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connecthealth)

# This module provides support for Connect Health. This module is available in the
# `aws-sdk-connecthealth` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_health = Aws::ConnectHealth::Client.new
#     resp = connect_health.activate_subscription(params)
#
# See {Client} for more information.
#
# # Async Client
#
# The {AsyncClient} class provides one asynchronous method for each API operation.
# Operation methods each accept a hash of request parameters and return an async
# response. For streaming operations, you can signal input events and register
# output event callbacks before waiting on the response.
#
#     connect_health = Aws::ConnectHealth::AsyncClient.new
#     resp = connect_health.activate_subscription(
#       # params and input stream
#      ) do |output_stream|
#       # register callbacks for events
#     end
#
# See {AsyncClient} for more information.
#
# # Errors
#
# Errors returned from Connect Health are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectHealth::Errors::ServiceError
#       # rescues all Connect Health API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectHealth
  autoload :Types, 'aws-sdk-connecthealth/types'
  autoload :ClientApi, 'aws-sdk-connecthealth/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connecthealth/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connecthealth/client'
  autoload :Errors, 'aws-sdk-connecthealth/errors'
  autoload :Waiters, 'aws-sdk-connecthealth/waiters'
  autoload :Resource, 'aws-sdk-connecthealth/resource'
  autoload :EndpointParameters, 'aws-sdk-connecthealth/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connecthealth/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connecthealth/endpoints'
  autoload :AsyncClient, 'aws-sdk-connecthealth/async_client'
  autoload :EventStreams, 'aws-sdk-connecthealth/event_streams'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-connecthealth/customizations'
