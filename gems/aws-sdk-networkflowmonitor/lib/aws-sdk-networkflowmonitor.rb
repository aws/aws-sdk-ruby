# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:networkflowmonitor)

# This module provides support for Network Flow Monitor. This module is available in the
# `aws-sdk-networkflowmonitor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_flow_monitor = Aws::NetworkFlowMonitor::Client.new
#     resp = network_flow_monitor.create_monitor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Network Flow Monitor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkFlowMonitor::Errors::ServiceError
#       # rescues all Network Flow Monitor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkFlowMonitor
  autoload :Types, 'aws-sdk-networkflowmonitor/types'
  autoload :ClientApi, 'aws-sdk-networkflowmonitor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-networkflowmonitor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-networkflowmonitor/client'
  autoload :Errors, 'aws-sdk-networkflowmonitor/errors'
  autoload :Waiters, 'aws-sdk-networkflowmonitor/waiters'
  autoload :Resource, 'aws-sdk-networkflowmonitor/resource'
  autoload :EndpointParameters, 'aws-sdk-networkflowmonitor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-networkflowmonitor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-networkflowmonitor/endpoints'

  GEM_VERSION = '1.17.0'

end

require_relative 'aws-sdk-networkflowmonitor/customizations'
