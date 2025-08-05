# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationsignals)

# This module provides support for Amazon CloudWatch Application Signals. This module is available in the
# `aws-sdk-applicationsignals` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     application_signals = Aws::ApplicationSignals::Client.new
#     resp = application_signals.batch_get_service_level_objective_budget_report(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Application Signals are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationSignals::Errors::ServiceError
#       # rescues all Amazon CloudWatch Application Signals API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApplicationSignals
  autoload :Types, 'aws-sdk-applicationsignals/types'
  autoload :ClientApi, 'aws-sdk-applicationsignals/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-applicationsignals/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-applicationsignals/client'
  autoload :Errors, 'aws-sdk-applicationsignals/errors'
  autoload :Resource, 'aws-sdk-applicationsignals/resource'
  autoload :EndpointParameters, 'aws-sdk-applicationsignals/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-applicationsignals/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-applicationsignals/endpoints'

  GEM_VERSION = '1.25.0'

end

require_relative 'aws-sdk-applicationsignals/customizations'
