# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-chimesdkmeetings/types'
require_relative 'aws-sdk-chimesdkmeetings/client_api'
require_relative 'aws-sdk-chimesdkmeetings/plugins/endpoints.rb'
require_relative 'aws-sdk-chimesdkmeetings/client'
require_relative 'aws-sdk-chimesdkmeetings/errors'
require_relative 'aws-sdk-chimesdkmeetings/resource'
require_relative 'aws-sdk-chimesdkmeetings/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmeetings/endpoint_provider'
require_relative 'aws-sdk-chimesdkmeetings/endpoints'
require_relative 'aws-sdk-chimesdkmeetings/customizations'

# This module provides support for Amazon Chime SDK Meetings. This module is available in the
# `aws-sdk-chimesdkmeetings` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_meetings = Aws::ChimeSDKMeetings::Client.new
#     resp = chime_sdk_meetings.batch_create_attendee(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Meetings are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKMeetings::Errors::ServiceError
#       # rescues all Amazon Chime SDK Meetings API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKMeetings

  GEM_VERSION = '1.23.0'

end
