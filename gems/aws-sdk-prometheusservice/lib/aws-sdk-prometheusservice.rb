# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:prometheusservice)

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
  autoload :Types, 'aws-sdk-prometheusservice/types'
  autoload :ClientApi, 'aws-sdk-prometheusservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-prometheusservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-prometheusservice/client'
  autoload :Errors, 'aws-sdk-prometheusservice/errors'
  autoload :Waiters, 'aws-sdk-prometheusservice/waiters'
  autoload :Resource, 'aws-sdk-prometheusservice/resource'
  autoload :EndpointParameters, 'aws-sdk-prometheusservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-prometheusservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-prometheusservice/endpoints'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-prometheusservice/customizations'
