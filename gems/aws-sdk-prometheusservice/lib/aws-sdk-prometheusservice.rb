# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-prometheusservice/types'
require_relative 'aws-sdk-prometheusservice/client_api'
require_relative 'aws-sdk-prometheusservice/plugins/endpoints.rb'
require_relative 'aws-sdk-prometheusservice/client'
require_relative 'aws-sdk-prometheusservice/errors'
require_relative 'aws-sdk-prometheusservice/waiters'
require_relative 'aws-sdk-prometheusservice/resource'
require_relative 'aws-sdk-prometheusservice/endpoint_parameters'
require_relative 'aws-sdk-prometheusservice/endpoint_provider'
require_relative 'aws-sdk-prometheusservice/endpoints'
require_relative 'aws-sdk-prometheusservice/customizations'

# This module provides support for Amazon Prometheus Service. This module is available in the
# `aws-sdk-prometheusservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     prometheus_service = Aws::PrometheusService::Client.new
#     resp = prometheus_service.create_alert_manager_definition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Prometheus Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PrometheusService::Errors::ServiceError
#       # rescues all Amazon Prometheus Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PrometheusService

  GEM_VERSION = '1.23.0'

end
