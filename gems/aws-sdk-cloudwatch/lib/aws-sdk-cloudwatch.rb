# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatch)

# This module provides support for Amazon CloudWatch. This module is available in the
# `aws-sdk-cloudwatch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch = Aws::CloudWatch::Client.new
#     resp = cloud_watch.delete_alarms(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatch::Errors::ServiceError
#       # rescues all Amazon CloudWatch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatch
  autoload :Types, 'aws-sdk-cloudwatch/types'
  autoload :ClientApi, 'aws-sdk-cloudwatch/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudwatch/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudwatch/client'
  autoload :Errors, 'aws-sdk-cloudwatch/errors'
  autoload :Waiters, 'aws-sdk-cloudwatch/waiters'
  autoload :Resource, 'aws-sdk-cloudwatch/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudwatch/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudwatch/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudwatch/endpoints'
  autoload :Alarm, 'aws-sdk-cloudwatch/alarm'
  autoload :CompositeAlarm, 'aws-sdk-cloudwatch/composite_alarm'
  autoload :Metric, 'aws-sdk-cloudwatch/metric'

  GEM_VERSION = '1.123.0'

end

require_relative 'aws-sdk-cloudwatch/customizations'
