# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-applicationsignals/types'
require_relative 'aws-sdk-applicationsignals/client_api'
require_relative 'aws-sdk-applicationsignals/plugins/endpoints.rb'
require_relative 'aws-sdk-applicationsignals/client'
require_relative 'aws-sdk-applicationsignals/errors'
require_relative 'aws-sdk-applicationsignals/resource'
require_relative 'aws-sdk-applicationsignals/endpoint_parameters'
require_relative 'aws-sdk-applicationsignals/endpoint_provider'
require_relative 'aws-sdk-applicationsignals/endpoints'
require_relative 'aws-sdk-applicationsignals/customizations'

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

  GEM_VERSION = '1.3.0'

end
