# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-forecastservice/types'
require_relative 'aws-sdk-forecastservice/client_api'
require_relative 'aws-sdk-forecastservice/client'
require_relative 'aws-sdk-forecastservice/errors'
require_relative 'aws-sdk-forecastservice/resource'
require_relative 'aws-sdk-forecastservice/customizations'

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
#     resp = forecast_service.create_dataset(params)
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

  GEM_VERSION = '1.11.0'

end
