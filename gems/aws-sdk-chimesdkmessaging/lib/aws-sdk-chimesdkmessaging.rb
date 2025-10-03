# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ChimeSDKMessaging', Module.new) unless Aws.const_defined?('ChimeSDKMessaging')

# @title Amazon Chime SDK Messaging
# <p>The Amazon Chime SDK messaging APIs in this section allow software developers to send
#          and receive messages in custom messaging applications. These APIs depend on the frameworks
#          provided by the Amazon Chime SDK identity APIs. For more information about the messaging
#          APIs, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html">Amazon Chime SDK messaging</a>.</p>
module Aws::ChimeSDKMessaging
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chimesdkmessaging/types'
require_relative 'aws-sdk-chimesdkmessaging/paginators'
require_relative 'aws-sdk-chimesdkmessaging/schema'
require_relative 'aws-sdk-chimesdkmessaging/auth_parameters'
require_relative 'aws-sdk-chimesdkmessaging/auth_resolver'
require_relative 'aws-sdk-chimesdkmessaging/client'
require_relative 'aws-sdk-chimesdkmessaging/customizations'
require_relative 'aws-sdk-chimesdkmessaging/errors'
require_relative 'aws-sdk-chimesdkmessaging/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmessaging/endpoint_provider'
require_relative 'aws-sdk-chimesdkmessaging/waiters'
