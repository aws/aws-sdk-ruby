# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-gamesparks/types'
require_relative 'aws-sdk-gamesparks/client_api'
require_relative 'aws-sdk-gamesparks/plugins/endpoints.rb'
require_relative 'aws-sdk-gamesparks/client'
require_relative 'aws-sdk-gamesparks/errors'
require_relative 'aws-sdk-gamesparks/resource'
require_relative 'aws-sdk-gamesparks/endpoint_parameters'
require_relative 'aws-sdk-gamesparks/endpoint_provider'
require_relative 'aws-sdk-gamesparks/endpoints'
require_relative 'aws-sdk-gamesparks/customizations'

# This module provides support for GameSparks. This module is available in the
# `aws-sdk-gamesparks` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     game_sparks = Aws::GameSparks::Client.new
#     resp = game_sparks.create_game(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from GameSparks are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GameSparks::Errors::ServiceError
#       # rescues all GameSparks API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GameSparks

  GEM_VERSION = '1.9.0'

end
