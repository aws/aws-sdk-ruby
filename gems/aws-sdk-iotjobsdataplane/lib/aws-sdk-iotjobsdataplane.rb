# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotjobsdataplane/types'
require_relative 'aws-sdk-iotjobsdataplane/client_api'
require_relative 'aws-sdk-iotjobsdataplane/client'
require_relative 'aws-sdk-iotjobsdataplane/errors'
require_relative 'aws-sdk-iotjobsdataplane/resource'
require_relative 'aws-sdk-iotjobsdataplane/customizations'

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

  GEM_VERSION = '1.25.0'

end
