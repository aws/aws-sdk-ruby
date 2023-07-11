# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-internetmonitor/types'
require_relative 'aws-sdk-internetmonitor/client_api'
require_relative 'aws-sdk-internetmonitor/plugins/endpoints.rb'
require_relative 'aws-sdk-internetmonitor/client'
require_relative 'aws-sdk-internetmonitor/errors'
require_relative 'aws-sdk-internetmonitor/waiters'
require_relative 'aws-sdk-internetmonitor/resource'
require_relative 'aws-sdk-internetmonitor/endpoint_parameters'
require_relative 'aws-sdk-internetmonitor/endpoint_provider'
require_relative 'aws-sdk-internetmonitor/endpoints'
require_relative 'aws-sdk-internetmonitor/customizations'

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

  GEM_VERSION = '1.7.0'

end
