# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-chimesdkvoice/types'
require_relative 'aws-sdk-chimesdkvoice/client_api'
require_relative 'aws-sdk-chimesdkvoice/plugins/endpoints.rb'
require_relative 'aws-sdk-chimesdkvoice/client'
require_relative 'aws-sdk-chimesdkvoice/errors'
require_relative 'aws-sdk-chimesdkvoice/resource'
require_relative 'aws-sdk-chimesdkvoice/endpoint_parameters'
require_relative 'aws-sdk-chimesdkvoice/endpoint_provider'
require_relative 'aws-sdk-chimesdkvoice/endpoints'
require_relative 'aws-sdk-chimesdkvoice/customizations'

# This module provides support for Amazon Chime SDK Voice. This module is available in the
# `aws-sdk-chimesdkvoice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_voice = Aws::ChimeSDKVoice::Client.new
#     resp = chime_sdk_voice.associate_phone_numbers_with_voice_connector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Voice are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKVoice::Errors::ServiceError
#       # rescues all Amazon Chime SDK Voice API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKVoice

  GEM_VERSION = '1.11.0'

end
