# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ChimeSDKMeetings', Module.new) unless Aws.const_defined?('ChimeSDKMeetings')

# @title Amazon Chime SDK Meetings
# <p>The Amazon Chime SDK meetings APIs in this section allow software developers to create Amazon Chime SDK meetings, set the Amazon Web Services Regions for meetings, create and manage users, and send and 
#             receive meeting notifications. For more information about the meeting APIs, see 
#             <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html">Amazon Chime SDK meetings</a>.</p>
module Aws::ChimeSDKMeetings
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chimesdkmeetings/types'
require_relative 'aws-sdk-chimesdkmeetings/paginators'
require_relative 'aws-sdk-chimesdkmeetings/schema'
require_relative 'aws-sdk-chimesdkmeetings/auth_parameters'
require_relative 'aws-sdk-chimesdkmeetings/auth_resolver'
require_relative 'aws-sdk-chimesdkmeetings/client'
require_relative 'aws-sdk-chimesdkmeetings/customizations'
require_relative 'aws-sdk-chimesdkmeetings/errors'
require_relative 'aws-sdk-chimesdkmeetings/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmeetings/endpoint_provider'
require_relative 'aws-sdk-chimesdkmeetings/waiters'
