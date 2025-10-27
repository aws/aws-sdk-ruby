# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkmessaging)

# This module provides support for Amazon Chime SDK Messaging. This module is available in the
# `aws-sdk-chimesdkmessaging` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_messaging = Aws::ChimeSDKMessaging::Client.new
#     resp = chime_sdk_messaging.associate_channel_flow(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Messaging are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKMessaging::Errors::ServiceError
#       # rescues all Amazon Chime SDK Messaging API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKMessaging
  autoload :Types, 'aws-sdk-chimesdkmessaging/types'
  autoload :ClientApi, 'aws-sdk-chimesdkmessaging/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-chimesdkmessaging/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-chimesdkmessaging/client'
  autoload :Errors, 'aws-sdk-chimesdkmessaging/errors'
  autoload :Resource, 'aws-sdk-chimesdkmessaging/resource'
  autoload :EndpointParameters, 'aws-sdk-chimesdkmessaging/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-chimesdkmessaging/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-chimesdkmessaging/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-chimesdkmessaging/customizations'
