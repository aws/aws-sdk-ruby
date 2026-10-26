# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EndUserMessaging', Module.new) unless Aws.const_defined?('EndUserMessaging')

# @title AWS End User Messaging
# <p>AWS End User Messaging provides a set of APIs to manage brand profiles, synchronize brand profile data with SMS and Rich Communication Services (RCS) registrations, and send and validate one-time passcodes across the SMS, voice, and WhatsApp channels.</p>
module Aws::EndUserMessaging
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-endusermessaging/types'
require_relative 'aws-sdk-endusermessaging/paginators'
require_relative 'aws-sdk-endusermessaging/schema'
require_relative 'aws-sdk-endusermessaging/auth_parameters'
require_relative 'aws-sdk-endusermessaging/auth_resolver'
require_relative 'aws-sdk-endusermessaging/client'
require_relative 'aws-sdk-endusermessaging/errors'
require_relative 'aws-sdk-endusermessaging/endpoint_parameters'
require_relative 'aws-sdk-endusermessaging/endpoint_provider'
require_relative 'aws-sdk-endusermessaging/waiters'
require_relative 'aws-sdk-endusermessaging/customizations'
