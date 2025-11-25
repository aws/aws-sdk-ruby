# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appfabric)

# This module provides support for AppFabric. This module is available in the
# `aws-sdk-appfabric` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_fabric = Aws::AppFabric::Client.new
#     resp = app_fabric.batch_get_user_access_tasks(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AppFabric are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppFabric::Errors::ServiceError
#       # rescues all AppFabric API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppFabric
  autoload :Types, 'aws-sdk-appfabric/types'
  autoload :ClientApi, 'aws-sdk-appfabric/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appfabric/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appfabric/client'
  autoload :Errors, 'aws-sdk-appfabric/errors'
  autoload :Waiters, 'aws-sdk-appfabric/waiters'
  autoload :Resource, 'aws-sdk-appfabric/resource'
  autoload :EndpointParameters, 'aws-sdk-appfabric/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appfabric/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appfabric/endpoints'

  GEM_VERSION = '1.35.0'

end

require_relative 'aws-sdk-appfabric/customizations'
