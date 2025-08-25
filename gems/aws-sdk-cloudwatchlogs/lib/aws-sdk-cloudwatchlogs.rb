# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchlogs)

# This module provides support for Amazon CloudWatch Logs. This module is available in the
# `aws-sdk-cloudwatchlogs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_logs = Aws::CloudWatchLogs::Client.new
#     resp = cloud_watch_logs.associate_kms_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Logs are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchLogs::Errors::ServiceError
#       # rescues all Amazon CloudWatch Logs API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchLogs
  autoload :Types, 'aws-sdk-cloudwatchlogs/types'
  autoload :ClientApi, 'aws-sdk-cloudwatchlogs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudwatchlogs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudwatchlogs/client'
  autoload :Errors, 'aws-sdk-cloudwatchlogs/errors'
  autoload :Resource, 'aws-sdk-cloudwatchlogs/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudwatchlogs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudwatchlogs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudwatchlogs/endpoints'
  autoload :EventStreams, 'aws-sdk-cloudwatchlogs/event_streams'

  GEM_VERSION = '1.125.0'

end

require_relative 'aws-sdk-cloudwatchlogs/customizations'
