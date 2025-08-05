# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:forecastservice)

# This module provides support for Amazon Forecast Service. This module is available in the
# `aws-sdk-forecastservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     forecast_service = Aws::ForecastService::Client.new
#     resp = forecast_service.create_auto_predictor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Forecast Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ForecastService::Errors::ServiceError
#       # rescues all Amazon Forecast Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ForecastService
  autoload :Types, 'aws-sdk-forecastservice/types'
  autoload :ClientApi, 'aws-sdk-forecastservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-forecastservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-forecastservice/client'
  autoload :Errors, 'aws-sdk-forecastservice/errors'
  autoload :Resource, 'aws-sdk-forecastservice/resource'
  autoload :EndpointParameters, 'aws-sdk-forecastservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-forecastservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-forecastservice/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-forecastservice/customizations'
