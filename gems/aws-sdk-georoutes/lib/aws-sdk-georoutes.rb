# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:georoutes)

# This module provides support for Amazon Location Service Routes V2. This module is available in the
# `aws-sdk-georoutes` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     geo_routes = Aws::GeoRoutes::Client.new
#     resp = geo_routes.calculate_isolines(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Location Service Routes V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GeoRoutes::Errors::ServiceError
#       # rescues all Amazon Location Service Routes V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GeoRoutes
  autoload :Types, 'aws-sdk-georoutes/types'
  autoload :ClientApi, 'aws-sdk-georoutes/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-georoutes/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-georoutes/client'
  autoload :Errors, 'aws-sdk-georoutes/errors'
  autoload :Resource, 'aws-sdk-georoutes/resource'
  autoload :EndpointParameters, 'aws-sdk-georoutes/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-georoutes/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-georoutes/endpoints'

  GEM_VERSION = '1.9.0'

end

require_relative 'aws-sdk-georoutes/customizations'
