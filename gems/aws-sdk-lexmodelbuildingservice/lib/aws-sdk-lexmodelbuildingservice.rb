# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexmodelbuildingservice)

# This module provides support for Amazon Lex Model Building Service. This module is available in the
# `aws-sdk-lexmodelbuildingservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex_model_building_service = Aws::LexModelBuildingService::Client.new
#     resp = lex_model_building_service.create_bot_version(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Model Building Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LexModelBuildingService::Errors::ServiceError
#       # rescues all Amazon Lex Model Building Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LexModelBuildingService
  autoload :Types, 'aws-sdk-lexmodelbuildingservice/types'
  autoload :ClientApi, 'aws-sdk-lexmodelbuildingservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lexmodelbuildingservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lexmodelbuildingservice/client'
  autoload :Errors, 'aws-sdk-lexmodelbuildingservice/errors'
  autoload :Resource, 'aws-sdk-lexmodelbuildingservice/resource'
  autoload :EndpointParameters, 'aws-sdk-lexmodelbuildingservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lexmodelbuildingservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lexmodelbuildingservice/endpoints'

  GEM_VERSION = '1.93.0'

end

require_relative 'aws-sdk-lexmodelbuildingservice/customizations'
