# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotdataplane/types'
require_relative 'aws-sdk-iotdataplane/client_api'
require_relative 'aws-sdk-iotdataplane/client'
require_relative 'aws-sdk-iotdataplane/errors'
require_relative 'aws-sdk-iotdataplane/resource'
require_relative 'aws-sdk-iotdataplane/customizations'

# This module provides support for AWS IoT Data Plane. This module is available in the
# `aws-sdk-iotdataplane` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_data_plane = Aws::IoTDataPlane::Client.new
#     resp = io_t_data_plane.delete_thing_shadow(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTDataPlane::Errors::ServiceError
#       # rescues all AWS IoT Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTDataPlane

  GEM_VERSION = '1.26.0'

end
