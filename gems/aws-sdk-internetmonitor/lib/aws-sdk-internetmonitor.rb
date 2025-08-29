# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:internetmonitor)

# This module provides support for Amazon CloudWatch Internet Monitor. This module is available in the
# `aws-sdk-internetmonitor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     internet_monitor = Aws::InternetMonitor::Client.new
#     resp = internet_monitor.create_monitor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Internet Monitor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::InternetMonitor::Errors::ServiceError
#       # rescues all Amazon CloudWatch Internet Monitor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::InternetMonitor
  autoload :Types, 'aws-sdk-internetmonitor/types'
  autoload :ClientApi, 'aws-sdk-internetmonitor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-internetmonitor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-internetmonitor/client'
  autoload :Errors, 'aws-sdk-internetmonitor/errors'
  autoload :Waiters, 'aws-sdk-internetmonitor/waiters'
  autoload :Resource, 'aws-sdk-internetmonitor/resource'
  autoload :EndpointParameters, 'aws-sdk-internetmonitor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-internetmonitor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-internetmonitor/endpoints'

  GEM_VERSION = '1.43.0'

end

require_relative 'aws-sdk-internetmonitor/customizations'
