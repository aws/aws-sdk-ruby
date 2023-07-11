# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ioteventsdata/types'
require_relative 'aws-sdk-ioteventsdata/client_api'
require_relative 'aws-sdk-ioteventsdata/plugins/endpoints.rb'
require_relative 'aws-sdk-ioteventsdata/client'
require_relative 'aws-sdk-ioteventsdata/errors'
require_relative 'aws-sdk-ioteventsdata/resource'
require_relative 'aws-sdk-ioteventsdata/endpoint_parameters'
require_relative 'aws-sdk-ioteventsdata/endpoint_provider'
require_relative 'aws-sdk-ioteventsdata/endpoints'
require_relative 'aws-sdk-ioteventsdata/customizations'

# This module provides support for AWS IoT Events Data. This module is available in the
# `aws-sdk-ioteventsdata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_events_data = Aws::IoTEventsData::Client.new
#     resp = io_t_events_data.batch_acknowledge_alarm(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Events Data are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTEventsData::Errors::ServiceError
#       # rescues all AWS IoT Events Data API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTEventsData

  GEM_VERSION = '1.34.0'

end
