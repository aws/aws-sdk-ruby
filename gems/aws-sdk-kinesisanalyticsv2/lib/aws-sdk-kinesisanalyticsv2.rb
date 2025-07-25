# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisanalyticsv2)

# This module provides support for Amazon Kinesis Analytics. This module is available in the
# `aws-sdk-kinesisanalyticsv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_analytics_v2 = Aws::KinesisAnalyticsV2::Client.new
#     resp = kinesis_analytics_v2.add_application_cloud_watch_logging_option(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisAnalyticsV2::Errors::ServiceError
#       # rescues all Amazon Kinesis Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisAnalyticsV2
  autoload :Types, 'aws-sdk-kinesisanalyticsv2/types'
  autoload :ClientApi, 'aws-sdk-kinesisanalyticsv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisanalyticsv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisanalyticsv2/client'
  autoload :Errors, 'aws-sdk-kinesisanalyticsv2/errors'
  autoload :Resource, 'aws-sdk-kinesisanalyticsv2/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisanalyticsv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisanalyticsv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisanalyticsv2/endpoints'

  GEM_VERSION = '1.77.0'

end

require_relative 'aws-sdk-kinesisanalyticsv2/customizations'
