# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:geomaps)

# This module provides support for Amazon Location Service Maps V2. This module is available in the
# `aws-sdk-geomaps` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     geo_maps = Aws::GeoMaps::Client.new
#     resp = geo_maps.get_glyphs(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Location Service Maps V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GeoMaps::Errors::ServiceError
#       # rescues all Amazon Location Service Maps V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GeoMaps
  autoload :Types, 'aws-sdk-geomaps/types'
  autoload :ClientApi, 'aws-sdk-geomaps/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-geomaps/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-geomaps/client'
  autoload :Errors, 'aws-sdk-geomaps/errors'
  autoload :Resource, 'aws-sdk-geomaps/resource'
  autoload :EndpointParameters, 'aws-sdk-geomaps/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-geomaps/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-geomaps/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-geomaps/customizations'
