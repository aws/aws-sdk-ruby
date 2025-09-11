# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ChimeSDKVoice', Module.new) unless Aws.const_defined?('ChimeSDKVoice')

# @title Amazon Chime SDK Voice
# <p>The Amazon Chime SDK telephony APIs in this section enable developers to create PSTN calling solutions that use Amazon Chime SDK Voice Connectors, and Amazon Chime SDK SIP media applications. Developers can 
#           also order and manage phone numbers, create and manage Voice Connectors and SIP media applications, and run voice analytics.</p>
module Aws::ChimeSDKVoice
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chimesdkvoice/types'
require_relative 'aws-sdk-chimesdkvoice/paginators'
require_relative 'aws-sdk-chimesdkvoice/schema'
require_relative 'aws-sdk-chimesdkvoice/auth_parameters'
require_relative 'aws-sdk-chimesdkvoice/auth_resolver'
require_relative 'aws-sdk-chimesdkvoice/client'
require_relative 'aws-sdk-chimesdkvoice/customizations'
require_relative 'aws-sdk-chimesdkvoice/errors'
require_relative 'aws-sdk-chimesdkvoice/endpoint_parameters'
require_relative 'aws-sdk-chimesdkvoice/endpoint_provider'
require_relative 'aws-sdk-chimesdkvoice/waiters'
