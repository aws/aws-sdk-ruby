# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-voiceid/types'
require_relative 'aws-sdk-voiceid/client_api'
require_relative 'aws-sdk-voiceid/plugins/endpoints.rb'
require_relative 'aws-sdk-voiceid/client'
require_relative 'aws-sdk-voiceid/errors'
require_relative 'aws-sdk-voiceid/resource'
require_relative 'aws-sdk-voiceid/endpoint_parameters'
require_relative 'aws-sdk-voiceid/endpoint_provider'
require_relative 'aws-sdk-voiceid/endpoints'
require_relative 'aws-sdk-voiceid/customizations'

# This module provides support for Amazon Voice ID. This module is available in the
# `aws-sdk-voiceid` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     voice_id = Aws::VoiceID::Client.new
#     resp = voice_id.associate_fraudster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Voice ID are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::VoiceID::Errors::ServiceError
#       # rescues all Amazon Voice ID API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::VoiceID

  GEM_VERSION = '1.17.0'

end
