# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:datazone)

# This module provides support for Amazon DataZone. This module is available in the
# `aws-sdk-datazone` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_zone = Aws::DataZone::Client.new
#     resp = data_zone.accept_predictions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DataZone are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataZone::Errors::ServiceError
#       # rescues all Amazon DataZone API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataZone
  autoload :Types, 'aws-sdk-datazone/types'
  autoload :ClientApi, 'aws-sdk-datazone/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-datazone/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-datazone/client'
  autoload :Errors, 'aws-sdk-datazone/errors'
  autoload :Resource, 'aws-sdk-datazone/resource'
  autoload :EndpointParameters, 'aws-sdk-datazone/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-datazone/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-datazone/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-datazone/customizations'
