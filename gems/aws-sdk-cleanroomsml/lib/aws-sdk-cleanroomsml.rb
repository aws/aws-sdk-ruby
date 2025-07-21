# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cleanroomsml)

# This module provides support for AWS Clean Rooms ML. This module is available in the
# `aws-sdk-cleanroomsml` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     clean_rooms_ml = Aws::CleanRoomsML::Client.new
#     resp = clean_rooms_ml.cancel_trained_model(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Clean Rooms ML are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CleanRoomsML::Errors::ServiceError
#       # rescues all AWS Clean Rooms ML API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CleanRoomsML
  autoload :Types, 'aws-sdk-cleanroomsml/types'
  autoload :ClientApi, 'aws-sdk-cleanroomsml/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cleanroomsml/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cleanroomsml/client'
  autoload :Errors, 'aws-sdk-cleanroomsml/errors'
  autoload :Waiters, 'aws-sdk-cleanroomsml/waiters'
  autoload :Resource, 'aws-sdk-cleanroomsml/resource'
  autoload :EndpointParameters, 'aws-sdk-cleanroomsml/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cleanroomsml/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cleanroomsml/endpoints'

  GEM_VERSION = '1.29.0'

end

require_relative 'aws-sdk-cleanroomsml/customizations'
