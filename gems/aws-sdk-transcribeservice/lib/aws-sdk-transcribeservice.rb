# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribeservice)

# This module provides support for Amazon Transcribe Service. This module is available in the
# `aws-sdk-transcribeservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     transcribe_service = Aws::TranscribeService::Client.new
#     resp = transcribe_service.create_call_analytics_category(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Transcribe Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TranscribeService::Errors::ServiceError
#       # rescues all Amazon Transcribe Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TranscribeService
  autoload :Types, 'aws-sdk-transcribeservice/types'
  autoload :ClientApi, 'aws-sdk-transcribeservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-transcribeservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-transcribeservice/client'
  autoload :Errors, 'aws-sdk-transcribeservice/errors'
  autoload :Resource, 'aws-sdk-transcribeservice/resource'
  autoload :EndpointParameters, 'aws-sdk-transcribeservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-transcribeservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-transcribeservice/endpoints'

  GEM_VERSION = '1.128.0'

end

require_relative 'aws-sdk-transcribeservice/customizations'
