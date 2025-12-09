# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:gameliftstreams)

# This module provides support for Amazon GameLift Streams. This module is available in the
# `aws-sdk-gameliftstreams` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     game_lift_streams = Aws::GameLiftStreams::Client.new
#     resp = game_lift_streams.add_stream_group_locations(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon GameLift Streams are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GameLiftStreams::Errors::ServiceError
#       # rescues all Amazon GameLift Streams API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GameLiftStreams
  autoload :Types, 'aws-sdk-gameliftstreams/types'
  autoload :ClientApi, 'aws-sdk-gameliftstreams/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-gameliftstreams/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-gameliftstreams/client'
  autoload :Errors, 'aws-sdk-gameliftstreams/errors'
  autoload :Waiters, 'aws-sdk-gameliftstreams/waiters'
  autoload :Resource, 'aws-sdk-gameliftstreams/resource'
  autoload :EndpointParameters, 'aws-sdk-gameliftstreams/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-gameliftstreams/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-gameliftstreams/endpoints'

  GEM_VERSION = '1.17.0'

end

require_relative 'aws-sdk-gameliftstreams/customizations'
