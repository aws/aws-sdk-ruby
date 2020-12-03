# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-forecastqueryservice/types'
require_relative 'aws-sdk-forecastqueryservice/client_api'
require_relative 'aws-sdk-forecastqueryservice/client'
require_relative 'aws-sdk-forecastqueryservice/errors'
require_relative 'aws-sdk-forecastqueryservice/resource'
require_relative 'aws-sdk-forecastqueryservice/customizations'

# This module provides support for Amazon Forecast Query Service. This module is available in the
# `aws-sdk-forecastqueryservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     forecast_query_service = Aws::ForecastQueryService::Client.new
#     resp = forecast_query_service.query_forecast(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Forecast Query Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ForecastQueryService::Errors::ServiceError
#       # rescues all Amazon Forecast Query Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ForecastQueryService

  GEM_VERSION = '1.10.0'

end
