# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cleanrooms)

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
#     resp = clean_rooms.batch_get_collaboration_analysis_template(params)
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
  autoload :Types, 'aws-sdk-cleanrooms/types'
  autoload :ClientApi, 'aws-sdk-cleanrooms/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cleanrooms/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cleanrooms/client'
  autoload :Errors, 'aws-sdk-cleanrooms/errors'
  autoload :Waiters, 'aws-sdk-cleanrooms/waiters'
  autoload :Resource, 'aws-sdk-cleanrooms/resource'
  autoload :EndpointParameters, 'aws-sdk-cleanrooms/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cleanrooms/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cleanrooms/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-cleanrooms/customizations'
