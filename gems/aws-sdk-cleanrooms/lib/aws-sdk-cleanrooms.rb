# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cleanrooms/types'
require_relative 'aws-sdk-cleanrooms/client_api'
require_relative 'aws-sdk-cleanrooms/plugins/endpoints.rb'
require_relative 'aws-sdk-cleanrooms/client'
require_relative 'aws-sdk-cleanrooms/errors'
require_relative 'aws-sdk-cleanrooms/waiters'
require_relative 'aws-sdk-cleanrooms/resource'
require_relative 'aws-sdk-cleanrooms/endpoint_parameters'
require_relative 'aws-sdk-cleanrooms/endpoint_provider'
require_relative 'aws-sdk-cleanrooms/endpoints'
require_relative 'aws-sdk-cleanrooms/customizations'

# This module provides support for AWS Clean Rooms Service. This module is available in the
# `aws-sdk-cleanrooms` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     clean_rooms = Aws::CleanRooms::Client.new
#     resp = clean_rooms.batch_get_schema(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Clean Rooms Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CleanRooms::Errors::ServiceError
#       # rescues all AWS Clean Rooms Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CleanRooms

  GEM_VERSION = '1.8.0'

end
