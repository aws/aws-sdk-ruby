# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectscheduling)

# This module provides support for Amazon Connect Scheduling. This module is available in the
# `aws-sdk-connectscheduling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_scheduling = Aws::ConnectScheduling::Client.new
#     resp = connect_scheduling.approve_time_off(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Scheduling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectScheduling::Errors::ServiceError
#       # rescues all Amazon Connect Scheduling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectScheduling
  autoload :Types, 'aws-sdk-connectscheduling/types'
  autoload :ClientApi, 'aws-sdk-connectscheduling/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectscheduling/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectscheduling/client'
  autoload :Errors, 'aws-sdk-connectscheduling/errors'
  autoload :Resource, 'aws-sdk-connectscheduling/resource'
  autoload :EndpointParameters, 'aws-sdk-connectscheduling/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectscheduling/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectscheduling/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-connectscheduling/customizations'
