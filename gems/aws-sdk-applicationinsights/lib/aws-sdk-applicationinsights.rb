# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationinsights)

# This module provides support for Amazon CloudWatch Application Insights. This module is available in the
# `aws-sdk-applicationinsights` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     application_insights = Aws::ApplicationInsights::Client.new
#     resp = application_insights.add_workload(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Application Insights are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationInsights::Errors::ServiceError
#       # rescues all Amazon CloudWatch Application Insights API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApplicationInsights
  autoload :Types, 'aws-sdk-applicationinsights/types'
  autoload :ClientApi, 'aws-sdk-applicationinsights/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-applicationinsights/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-applicationinsights/client'
  autoload :Errors, 'aws-sdk-applicationinsights/errors'
  autoload :Resource, 'aws-sdk-applicationinsights/resource'
  autoload :EndpointParameters, 'aws-sdk-applicationinsights/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-applicationinsights/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-applicationinsights/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-applicationinsights/customizations'
