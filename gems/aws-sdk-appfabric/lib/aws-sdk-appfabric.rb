# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appfabric/types'
require_relative 'aws-sdk-appfabric/client_api'
require_relative 'aws-sdk-appfabric/plugins/endpoints.rb'
require_relative 'aws-sdk-appfabric/client'
require_relative 'aws-sdk-appfabric/errors'
require_relative 'aws-sdk-appfabric/waiters'
require_relative 'aws-sdk-appfabric/resource'
require_relative 'aws-sdk-appfabric/endpoint_parameters'
require_relative 'aws-sdk-appfabric/endpoint_provider'
require_relative 'aws-sdk-appfabric/endpoints'
require_relative 'aws-sdk-appfabric/customizations'

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

  GEM_VERSION = '1.3.0'

end
