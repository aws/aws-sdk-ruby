# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PersonalizeEvents', Module.new) unless Aws.const_defined?('PersonalizeEvents')

# @title Amazon Personalize Events
# <p>Amazon Personalize can consume real-time user event data, such as <i>stream</i> or <i>click</i> data, and use
#       it for model training either alone or combined with historical data. For more information see 
#       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html">Recording item interaction events</a>.</p>
module Aws::PersonalizeEvents
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-personalizeevents/types'
require_relative 'aws-sdk-personalizeevents/paginators'
require_relative 'aws-sdk-personalizeevents/schema'
require_relative 'aws-sdk-personalizeevents/auth_parameters'
require_relative 'aws-sdk-personalizeevents/auth_resolver'
require_relative 'aws-sdk-personalizeevents/client'
require_relative 'aws-sdk-personalizeevents/customizations'
require_relative 'aws-sdk-personalizeevents/errors'
require_relative 'aws-sdk-personalizeevents/endpoint_parameters'
require_relative 'aws-sdk-personalizeevents/endpoint_provider'
require_relative 'aws-sdk-personalizeevents/waiters'
