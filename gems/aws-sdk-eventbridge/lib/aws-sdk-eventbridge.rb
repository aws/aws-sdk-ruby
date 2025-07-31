# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:eventbridge)

# This module provides support for Amazon EventBridge. This module is available in the
# `aws-sdk-eventbridge` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     event_bridge = Aws::EventBridge::Client.new
#     resp = event_bridge.activate_event_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridge are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EventBridge::Errors::ServiceError
#       # rescues all Amazon EventBridge API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EventBridge
  autoload :Types, 'aws-sdk-eventbridge/types'
  autoload :ClientApi, 'aws-sdk-eventbridge/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-eventbridge/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-eventbridge/client'
  autoload :Errors, 'aws-sdk-eventbridge/errors'
  autoload :Resource, 'aws-sdk-eventbridge/resource'
  autoload :EndpointParameters, 'aws-sdk-eventbridge/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-eventbridge/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-eventbridge/endpoints'

  GEM_VERSION = '1.87.0'

end

require_relative 'aws-sdk-eventbridge/customizations'
