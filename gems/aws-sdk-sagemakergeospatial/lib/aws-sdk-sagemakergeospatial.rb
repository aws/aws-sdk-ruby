# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakergeospatial)

# This module provides support for Amazon SageMaker geospatial capabilities. This module is available in the
# `aws-sdk-sagemakergeospatial` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_geospatial = Aws::SageMakerGeospatial::Client.new
#     resp = sage_maker_geospatial.delete_earth_observation_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker geospatial capabilities are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerGeospatial::Errors::ServiceError
#       # rescues all Amazon SageMaker geospatial capabilities API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerGeospatial
  autoload :Types, 'aws-sdk-sagemakergeospatial/types'
  autoload :ClientApi, 'aws-sdk-sagemakergeospatial/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakergeospatial/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakergeospatial/client'
  autoload :Errors, 'aws-sdk-sagemakergeospatial/errors'
  autoload :Resource, 'aws-sdk-sagemakergeospatial/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakergeospatial/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakergeospatial/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakergeospatial/endpoints'

  GEM_VERSION = '1.38.0'

end

require_relative 'aws-sdk-sagemakergeospatial/customizations'
