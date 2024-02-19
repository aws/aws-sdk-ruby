# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-networkmonitor/types'
require_relative 'aws-sdk-networkmonitor/client_api'
require_relative 'aws-sdk-networkmonitor/plugins/endpoints.rb'
require_relative 'aws-sdk-networkmonitor/client'
require_relative 'aws-sdk-networkmonitor/errors'
require_relative 'aws-sdk-networkmonitor/waiters'
require_relative 'aws-sdk-networkmonitor/resource'
require_relative 'aws-sdk-networkmonitor/endpoint_parameters'
require_relative 'aws-sdk-networkmonitor/endpoint_provider'
require_relative 'aws-sdk-networkmonitor/endpoints'
require_relative 'aws-sdk-networkmonitor/customizations'

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

  GEM_VERSION = '1.1.0'

end
