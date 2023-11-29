# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cleanroomsml/types'
require_relative 'aws-sdk-cleanroomsml/client_api'
require_relative 'aws-sdk-cleanroomsml/plugins/endpoints.rb'
require_relative 'aws-sdk-cleanroomsml/client'
require_relative 'aws-sdk-cleanroomsml/errors'
require_relative 'aws-sdk-cleanroomsml/resource'
require_relative 'aws-sdk-cleanroomsml/endpoint_parameters'
require_relative 'aws-sdk-cleanroomsml/endpoint_provider'
require_relative 'aws-sdk-cleanroomsml/endpoints'
require_relative 'aws-sdk-cleanroomsml/customizations'

# This module provides support for cleanrooms-ml. This module is available in the
# `aws-sdk-cleanroomsml` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     clean_rooms_ml = Aws::CleanRoomsML::Client.new
#     resp = clean_rooms_ml.create_audience_model(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from cleanrooms-ml are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CleanRoomsML::Errors::ServiceError
#       # rescues all cleanrooms-ml API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CleanRoomsML

  GEM_VERSION = '1.0.0'

end
