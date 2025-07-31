# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpointsmsvoice)

# This module provides support for Amazon Pinpoint SMS and Voice Service. This module is available in the
# `aws-sdk-pinpointsmsvoice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint_sms_voice = Aws::PinpointSMSVoice::Client.new
#     resp = pinpoint_sms_voice.create_configuration_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint SMS and Voice Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PinpointSMSVoice::Errors::ServiceError
#       # rescues all Amazon Pinpoint SMS and Voice Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PinpointSMSVoice
  autoload :Types, 'aws-sdk-pinpointsmsvoice/types'
  autoload :ClientApi, 'aws-sdk-pinpointsmsvoice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pinpointsmsvoice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pinpointsmsvoice/client'
  autoload :Errors, 'aws-sdk-pinpointsmsvoice/errors'
  autoload :Resource, 'aws-sdk-pinpointsmsvoice/resource'
  autoload :EndpointParameters, 'aws-sdk-pinpointsmsvoice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pinpointsmsvoice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pinpointsmsvoice/endpoints'

  GEM_VERSION = '1.65.0'

end

require_relative 'aws-sdk-pinpointsmsvoice/customizations'
