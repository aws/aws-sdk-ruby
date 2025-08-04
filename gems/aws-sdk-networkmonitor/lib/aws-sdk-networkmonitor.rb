# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:networkmonitor)

# This module provides support for Amazon CloudWatch Network Monitor. This module is available in the
# `aws-sdk-networkmonitor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_monitor = Aws::NetworkMonitor::Client.new
#     resp = network_monitor.create_monitor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Network Monitor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkMonitor::Errors::ServiceError
#       # rescues all Amazon CloudWatch Network Monitor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkMonitor
  autoload :Types, 'aws-sdk-networkmonitor/types'
  autoload :ClientApi, 'aws-sdk-networkmonitor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-networkmonitor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-networkmonitor/client'
  autoload :Errors, 'aws-sdk-networkmonitor/errors'
  autoload :Waiters, 'aws-sdk-networkmonitor/waiters'
  autoload :Resource, 'aws-sdk-networkmonitor/resource'
  autoload :EndpointParameters, 'aws-sdk-networkmonitor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-networkmonitor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-networkmonitor/endpoints'

  GEM_VERSION = '1.24.0'

end

require_relative 'aws-sdk-networkmonitor/customizations'
