# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotjobsdataplane)

# This module provides support for AWS IoT Jobs Data Plane. This module is available in the
# `aws-sdk-iotjobsdataplane` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_jobs_data_plane = Aws::IoTJobsDataPlane::Client.new
#     resp = io_t_jobs_data_plane.describe_job_execution(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Jobs Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTJobsDataPlane::Errors::ServiceError
#       # rescues all AWS IoT Jobs Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTJobsDataPlane
  autoload :Types, 'aws-sdk-iotjobsdataplane/types'
  autoload :ClientApi, 'aws-sdk-iotjobsdataplane/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotjobsdataplane/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotjobsdataplane/client'
  autoload :Errors, 'aws-sdk-iotjobsdataplane/errors'
  autoload :Resource, 'aws-sdk-iotjobsdataplane/resource'
  autoload :EndpointParameters, 'aws-sdk-iotjobsdataplane/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotjobsdataplane/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotjobsdataplane/endpoints'

  GEM_VERSION = '1.70.0'

end

require_relative 'aws-sdk-iotjobsdataplane/customizations'
