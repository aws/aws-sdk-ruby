# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:datasync)

# This module provides support for AWS DataSync. This module is available in the
# `aws-sdk-datasync` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_sync = Aws::DataSync::Client.new
#     resp = data_sync.cancel_task_execution(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS DataSync are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataSync::Errors::ServiceError
#       # rescues all AWS DataSync API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataSync
  autoload :Types, 'aws-sdk-datasync/types'
  autoload :ClientApi, 'aws-sdk-datasync/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-datasync/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-datasync/client'
  autoload :Errors, 'aws-sdk-datasync/errors'
  autoload :Resource, 'aws-sdk-datasync/resource'
  autoload :EndpointParameters, 'aws-sdk-datasync/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-datasync/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-datasync/endpoints'

  GEM_VERSION = '1.115.0'

end

require_relative 'aws-sdk-datasync/customizations'
