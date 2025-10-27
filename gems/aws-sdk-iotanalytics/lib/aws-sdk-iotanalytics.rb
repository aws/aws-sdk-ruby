# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotanalytics)

# This module provides support for AWS IoT Analytics. This module is available in the
# `aws-sdk-iotanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_analytics = Aws::IoTAnalytics::Client.new
#     resp = io_t_analytics.batch_put_message(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTAnalytics::Errors::ServiceError
#       # rescues all AWS IoT Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTAnalytics
  autoload :Types, 'aws-sdk-iotanalytics/types'
  autoload :ClientApi, 'aws-sdk-iotanalytics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotanalytics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotanalytics/client'
  autoload :Errors, 'aws-sdk-iotanalytics/errors'
  autoload :Resource, 'aws-sdk-iotanalytics/resource'
  autoload :EndpointParameters, 'aws-sdk-iotanalytics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotanalytics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotanalytics/endpoints'

  GEM_VERSION = '1.89.0'

end

require_relative 'aws-sdk-iotanalytics/customizations'
