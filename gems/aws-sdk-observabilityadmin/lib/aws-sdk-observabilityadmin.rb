# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:observabilityadmin)

# This module provides support for CloudWatch Observability Admin Service. This module is available in the
# `aws-sdk-observabilityadmin` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     observability_admin = Aws::ObservabilityAdmin::Client.new
#     resp = observability_admin.create_telemetry_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from CloudWatch Observability Admin Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ObservabilityAdmin::Errors::ServiceError
#       # rescues all CloudWatch Observability Admin Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ObservabilityAdmin
  autoload :Types, 'aws-sdk-observabilityadmin/types'
  autoload :ClientApi, 'aws-sdk-observabilityadmin/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-observabilityadmin/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-observabilityadmin/client'
  autoload :Errors, 'aws-sdk-observabilityadmin/errors'
  autoload :Waiters, 'aws-sdk-observabilityadmin/waiters'
  autoload :Resource, 'aws-sdk-observabilityadmin/resource'
  autoload :EndpointParameters, 'aws-sdk-observabilityadmin/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-observabilityadmin/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-observabilityadmin/endpoints'

  GEM_VERSION = '1.10.0'

end

require_relative 'aws-sdk-observabilityadmin/customizations'
