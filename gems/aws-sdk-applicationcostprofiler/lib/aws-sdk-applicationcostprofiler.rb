# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationcostprofiler)

# This module provides support for AWS Application Cost Profiler. This module is available in the
# `aws-sdk-applicationcostprofiler` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     application_cost_profiler = Aws::ApplicationCostProfiler::Client.new
#     resp = application_cost_profiler.delete_report_definition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Application Cost Profiler are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationCostProfiler::Errors::ServiceError
#       # rescues all AWS Application Cost Profiler API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApplicationCostProfiler
  autoload :Types, 'aws-sdk-applicationcostprofiler/types'
  autoload :ClientApi, 'aws-sdk-applicationcostprofiler/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-applicationcostprofiler/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-applicationcostprofiler/client'
  autoload :Errors, 'aws-sdk-applicationcostprofiler/errors'
  autoload :Resource, 'aws-sdk-applicationcostprofiler/resource'
  autoload :EndpointParameters, 'aws-sdk-applicationcostprofiler/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-applicationcostprofiler/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-applicationcostprofiler/endpoints'

  GEM_VERSION = '1.43.0'

end

require_relative 'aws-sdk-applicationcostprofiler/customizations'
