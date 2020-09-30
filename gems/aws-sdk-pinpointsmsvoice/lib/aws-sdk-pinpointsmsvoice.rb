# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pinpointsmsvoice/types'
require_relative 'aws-sdk-pinpointsmsvoice/client_api'
require_relative 'aws-sdk-pinpointsmsvoice/client'
require_relative 'aws-sdk-pinpointsmsvoice/errors'
require_relative 'aws-sdk-pinpointsmsvoice/resource'
require_relative 'aws-sdk-pinpointsmsvoice/customizations'

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

  GEM_VERSION = '1.21.0'

end
