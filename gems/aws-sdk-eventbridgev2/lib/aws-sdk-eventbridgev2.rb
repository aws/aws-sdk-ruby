# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:eventbridgev2)

# This module provides support for Amazon EventBridgeV2. This module is available in the
# `aws-sdk-eventbridgev2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     event_bridge_v2 = Aws::EventBridgeV2::Client.new
#     resp = event_bridge_v2.create_event_bus(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridgeV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EventBridgeV2::Errors::ServiceError
#       # rescues all Amazon EventBridgeV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EventBridgeV2
  autoload :Types, 'aws-sdk-eventbridgev2/types'
  autoload :ClientApi, 'aws-sdk-eventbridgev2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-eventbridgev2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-eventbridgev2/client'
  autoload :Errors, 'aws-sdk-eventbridgev2/errors'
  autoload :Waiters, 'aws-sdk-eventbridgev2/waiters'
  autoload :Resource, 'aws-sdk-eventbridgev2/resource'
  autoload :EndpointParameters, 'aws-sdk-eventbridgev2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-eventbridgev2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-eventbridgev2/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-eventbridgev2/customizations'
