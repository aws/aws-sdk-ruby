# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-healthlake/types'
require_relative 'aws-sdk-healthlake/client_api'
require_relative 'aws-sdk-healthlake/plugins/endpoints.rb'
require_relative 'aws-sdk-healthlake/client'
require_relative 'aws-sdk-healthlake/errors'
require_relative 'aws-sdk-healthlake/resource'
require_relative 'aws-sdk-healthlake/endpoint_parameters'
require_relative 'aws-sdk-healthlake/endpoint_provider'
require_relative 'aws-sdk-healthlake/endpoints'
require_relative 'aws-sdk-healthlake/customizations'

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

  GEM_VERSION = '1.20.0'

end
