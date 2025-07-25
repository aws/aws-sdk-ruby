# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:groundstation)

# This module provides support for AWS Ground Station. This module is available in the
# `aws-sdk-groundstation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ground_station = Aws::GroundStation::Client.new
#     resp = ground_station.cancel_contact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Ground Station are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GroundStation::Errors::ServiceError
#       # rescues all AWS Ground Station API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GroundStation
  autoload :Types, 'aws-sdk-groundstation/types'
  autoload :ClientApi, 'aws-sdk-groundstation/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-groundstation/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-groundstation/client'
  autoload :Errors, 'aws-sdk-groundstation/errors'
  autoload :Waiters, 'aws-sdk-groundstation/waiters'
  autoload :Resource, 'aws-sdk-groundstation/resource'
  autoload :EndpointParameters, 'aws-sdk-groundstation/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-groundstation/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-groundstation/endpoints'

  GEM_VERSION = '1.68.0'

end

require_relative 'aws-sdk-groundstation/customizations'
