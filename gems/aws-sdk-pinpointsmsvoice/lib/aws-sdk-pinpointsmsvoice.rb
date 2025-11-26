# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PinpointSMSVoice', Module.new) unless Aws.const_defined?('PinpointSMSVoice')

# @title Amazon Pinpoint SMS and Voice Service
# Pinpoint SMS and Voice Messaging public facing APIs
module Aws::PinpointSMSVoice
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pinpointsmsvoice/types'
require_relative 'aws-sdk-pinpointsmsvoice/paginators'
require_relative 'aws-sdk-pinpointsmsvoice/schema'
require_relative 'aws-sdk-pinpointsmsvoice/auth_parameters'
require_relative 'aws-sdk-pinpointsmsvoice/auth_resolver'
require_relative 'aws-sdk-pinpointsmsvoice/client'
require_relative 'aws-sdk-pinpointsmsvoice/errors'
require_relative 'aws-sdk-pinpointsmsvoice/endpoint_parameters'
require_relative 'aws-sdk-pinpointsmsvoice/endpoint_provider'
require_relative 'aws-sdk-pinpointsmsvoice/waiters'
require_relative 'aws-sdk-pinpointsmsvoice/customizations'
