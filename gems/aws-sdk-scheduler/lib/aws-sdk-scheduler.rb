# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:scheduler)

# This module provides support for Amazon EventBridge Scheduler. This module is available in the
# `aws-sdk-scheduler` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     scheduler = Aws::Scheduler::Client.new
#     resp = scheduler.create_schedule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridge Scheduler are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Scheduler::Errors::ServiceError
#       # rescues all Amazon EventBridge Scheduler API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Scheduler
  autoload :Types, 'aws-sdk-scheduler/types'
  autoload :ClientApi, 'aws-sdk-scheduler/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-scheduler/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-scheduler/client'
  autoload :Errors, 'aws-sdk-scheduler/errors'
  autoload :Resource, 'aws-sdk-scheduler/resource'
  autoload :EndpointParameters, 'aws-sdk-scheduler/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-scheduler/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-scheduler/endpoints'

  GEM_VERSION = '1.33.0'

end

require_relative 'aws-sdk-scheduler/customizations'
