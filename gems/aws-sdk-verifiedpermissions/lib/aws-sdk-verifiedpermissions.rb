# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:verifiedpermissions)

# This module provides support for Amazon Verified Permissions. This module is available in the
# `aws-sdk-verifiedpermissions` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     verified_permissions = Aws::VerifiedPermissions::Client.new
#     resp = verified_permissions.batch_get_policy(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Verified Permissions are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::VerifiedPermissions::Errors::ServiceError
#       # rescues all Amazon Verified Permissions API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::VerifiedPermissions
  autoload :Types, 'aws-sdk-verifiedpermissions/types'
  autoload :ClientApi, 'aws-sdk-verifiedpermissions/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-verifiedpermissions/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-verifiedpermissions/client'
  autoload :Errors, 'aws-sdk-verifiedpermissions/errors'
  autoload :Waiters, 'aws-sdk-verifiedpermissions/waiters'
  autoload :Resource, 'aws-sdk-verifiedpermissions/resource'
  autoload :EndpointParameters, 'aws-sdk-verifiedpermissions/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-verifiedpermissions/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-verifiedpermissions/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-verifiedpermissions/customizations'
