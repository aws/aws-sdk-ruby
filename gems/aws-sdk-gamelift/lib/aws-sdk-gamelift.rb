# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:gamelift)

# This module provides support for Amazon GameLift. This module is available in the
# `aws-sdk-gamelift` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     game_lift = Aws::GameLift::Client.new
#     resp = game_lift.accept_match(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon GameLift are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GameLift::Errors::ServiceError
#       # rescues all Amazon GameLift API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GameLift
  autoload :Types, 'aws-sdk-gamelift/types'
  autoload :ClientApi, 'aws-sdk-gamelift/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-gamelift/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-gamelift/client'
  autoload :Errors, 'aws-sdk-gamelift/errors'
  autoload :Resource, 'aws-sdk-gamelift/resource'
  autoload :EndpointParameters, 'aws-sdk-gamelift/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-gamelift/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-gamelift/endpoints'

  GEM_VERSION = '1.109.0'

end

require_relative 'aws-sdk-gamelift/customizations'
