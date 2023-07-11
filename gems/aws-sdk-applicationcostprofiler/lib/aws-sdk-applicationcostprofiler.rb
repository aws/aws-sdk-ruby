# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-applicationcostprofiler/types'
require_relative 'aws-sdk-applicationcostprofiler/client_api'
require_relative 'aws-sdk-applicationcostprofiler/plugins/endpoints.rb'
require_relative 'aws-sdk-applicationcostprofiler/client'
require_relative 'aws-sdk-applicationcostprofiler/errors'
require_relative 'aws-sdk-applicationcostprofiler/resource'
require_relative 'aws-sdk-applicationcostprofiler/endpoint_parameters'
require_relative 'aws-sdk-applicationcostprofiler/endpoint_provider'
require_relative 'aws-sdk-applicationcostprofiler/endpoints'
require_relative 'aws-sdk-applicationcostprofiler/customizations'

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

  GEM_VERSION = '1.16.0'

end
