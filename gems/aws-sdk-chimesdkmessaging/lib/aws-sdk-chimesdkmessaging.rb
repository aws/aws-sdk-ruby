# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-chimesdkmessaging/types'
require_relative 'aws-sdk-chimesdkmessaging/client_api'
require_relative 'aws-sdk-chimesdkmessaging/plugins/endpoints.rb'
require_relative 'aws-sdk-chimesdkmessaging/client'
require_relative 'aws-sdk-chimesdkmessaging/errors'
require_relative 'aws-sdk-chimesdkmessaging/resource'
require_relative 'aws-sdk-chimesdkmessaging/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmessaging/endpoint_provider'
require_relative 'aws-sdk-chimesdkmessaging/endpoints'
require_relative 'aws-sdk-chimesdkmessaging/customizations'

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

  GEM_VERSION = '1.24.0'

end
