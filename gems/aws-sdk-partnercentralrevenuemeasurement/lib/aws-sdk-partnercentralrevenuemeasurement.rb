# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralrevenuemeasurement)

# This module provides support for Partner Central Revenue Measurement API. This module is available in the
# `aws-sdk-partnercentralrevenuemeasurement` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_revenue_measurement = Aws::PartnerCentralRevenueMeasurement::Client.new
#     resp = partner_central_revenue_measurement.create_marketplace_revenue_share(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Revenue Measurement API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralRevenueMeasurement::Errors::ServiceError
#       # rescues all Partner Central Revenue Measurement API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralRevenueMeasurement
  autoload :Types, 'aws-sdk-partnercentralrevenuemeasurement/types'
  autoload :ClientApi, 'aws-sdk-partnercentralrevenuemeasurement/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralrevenuemeasurement/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralrevenuemeasurement/client'
  autoload :Errors, 'aws-sdk-partnercentralrevenuemeasurement/errors'
  autoload :Waiters, 'aws-sdk-partnercentralrevenuemeasurement/waiters'
  autoload :Resource, 'aws-sdk-partnercentralrevenuemeasurement/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralrevenuemeasurement/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralrevenuemeasurement/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralrevenuemeasurement/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-partnercentralrevenuemeasurement/customizations'
