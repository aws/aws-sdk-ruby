# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:healthlake)

# This module provides support for Amazon HealthLake. This module is available in the
# `aws-sdk-healthlake` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     health_lake = Aws::HealthLake::Client.new
#     resp = health_lake.create_fhir_datastore(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon HealthLake are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::HealthLake::Errors::ServiceError
#       # rescues all Amazon HealthLake API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::HealthLake
  autoload :Types, 'aws-sdk-healthlake/types'
  autoload :ClientApi, 'aws-sdk-healthlake/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-healthlake/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-healthlake/client'
  autoload :Errors, 'aws-sdk-healthlake/errors'
  autoload :Resource, 'aws-sdk-healthlake/resource'
  autoload :EndpointParameters, 'aws-sdk-healthlake/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-healthlake/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-healthlake/endpoints'

  GEM_VERSION = '1.51.0'

end

require_relative 'aws-sdk-healthlake/customizations'
