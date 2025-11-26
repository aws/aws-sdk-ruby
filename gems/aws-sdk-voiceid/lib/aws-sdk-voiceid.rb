# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('VoiceID', Module.new) unless Aws.const_defined?('VoiceID')

# @title Amazon Voice ID
# <p>Amazon Connect Voice ID provides real-time caller authentication and fraud risk detection, which
#             make voice interactions in contact centers more secure and efficient.</p>
module Aws::VoiceID
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-voiceid/types'
require_relative 'aws-sdk-voiceid/paginators'
require_relative 'aws-sdk-voiceid/schema'
require_relative 'aws-sdk-voiceid/auth_parameters'
require_relative 'aws-sdk-voiceid/auth_resolver'
require_relative 'aws-sdk-voiceid/client'
require_relative 'aws-sdk-voiceid/errors'
require_relative 'aws-sdk-voiceid/endpoint_parameters'
require_relative 'aws-sdk-voiceid/endpoint_provider'
require_relative 'aws-sdk-voiceid/waiters'
require_relative 'aws-sdk-voiceid/customizations'
