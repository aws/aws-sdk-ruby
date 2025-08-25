# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevents)

# This module provides support for Amazon CloudWatch Events. This module is available in the
# `aws-sdk-cloudwatchevents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_events = Aws::CloudWatchEvents::Client.new
#     resp = cloud_watch_events.activate_event_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Events are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchEvents::Errors::ServiceError
#       # rescues all Amazon CloudWatch Events API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchEvents
  autoload :Types, 'aws-sdk-cloudwatchevents/types'
  autoload :ClientApi, 'aws-sdk-cloudwatchevents/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudwatchevents/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudwatchevents/client'
  autoload :Errors, 'aws-sdk-cloudwatchevents/errors'
  autoload :Resource, 'aws-sdk-cloudwatchevents/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudwatchevents/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudwatchevents/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudwatchevents/endpoints'

  GEM_VERSION = '1.95.0'

end

require_relative 'aws-sdk-cloudwatchevents/customizations'
