# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ioteventsdata)

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
  autoload :Types, 'aws-sdk-ioteventsdata/types'
  autoload :ClientApi, 'aws-sdk-ioteventsdata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ioteventsdata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ioteventsdata/client'
  autoload :Errors, 'aws-sdk-ioteventsdata/errors'
  autoload :Resource, 'aws-sdk-ioteventsdata/resource'
  autoload :EndpointParameters, 'aws-sdk-ioteventsdata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ioteventsdata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ioteventsdata/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-ioteventsdata/customizations'
