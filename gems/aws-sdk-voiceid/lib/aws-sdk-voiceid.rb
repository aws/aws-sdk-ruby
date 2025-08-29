# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:voiceid)

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
  autoload :Types, 'aws-sdk-voiceid/types'
  autoload :ClientApi, 'aws-sdk-voiceid/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-voiceid/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-voiceid/client'
  autoload :Errors, 'aws-sdk-voiceid/errors'
  autoload :Resource, 'aws-sdk-voiceid/resource'
  autoload :EndpointParameters, 'aws-sdk-voiceid/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-voiceid/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-voiceid/endpoints'

  GEM_VERSION = '1.48.0'

end

require_relative 'aws-sdk-voiceid/customizations'
