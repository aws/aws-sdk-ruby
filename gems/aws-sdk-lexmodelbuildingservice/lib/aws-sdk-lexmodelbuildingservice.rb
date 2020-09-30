# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lexmodelbuildingservice/types'
require_relative 'aws-sdk-lexmodelbuildingservice/client_api'
require_relative 'aws-sdk-lexmodelbuildingservice/client'
require_relative 'aws-sdk-lexmodelbuildingservice/errors'
require_relative 'aws-sdk-lexmodelbuildingservice/resource'
require_relative 'aws-sdk-lexmodelbuildingservice/customizations'

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

  GEM_VERSION = '1.39.0'

end
