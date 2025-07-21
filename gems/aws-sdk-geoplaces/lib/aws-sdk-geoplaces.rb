# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:geoplaces)

# This module provides support for Amazon Location Service Places V2. This module is available in the
# `aws-sdk-geoplaces` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     geo_places = Aws::GeoPlaces::Client.new
#     resp = geo_places.autocomplete(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Location Service Places V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GeoPlaces::Errors::ServiceError
#       # rescues all Amazon Location Service Places V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GeoPlaces
  autoload :Types, 'aws-sdk-geoplaces/types'
  autoload :ClientApi, 'aws-sdk-geoplaces/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-geoplaces/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-geoplaces/client'
  autoload :Errors, 'aws-sdk-geoplaces/errors'
  autoload :Resource, 'aws-sdk-geoplaces/resource'
  autoload :EndpointParameters, 'aws-sdk-geoplaces/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-geoplaces/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-geoplaces/endpoints'

  GEM_VERSION = '1.9.0'

end

require_relative 'aws-sdk-geoplaces/customizations'
