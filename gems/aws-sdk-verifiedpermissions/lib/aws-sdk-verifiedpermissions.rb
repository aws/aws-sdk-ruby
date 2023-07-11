# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-verifiedpermissions/types'
require_relative 'aws-sdk-verifiedpermissions/client_api'
require_relative 'aws-sdk-verifiedpermissions/plugins/endpoints.rb'
require_relative 'aws-sdk-verifiedpermissions/client'
require_relative 'aws-sdk-verifiedpermissions/errors'
require_relative 'aws-sdk-verifiedpermissions/waiters'
require_relative 'aws-sdk-verifiedpermissions/resource'
require_relative 'aws-sdk-verifiedpermissions/endpoint_parameters'
require_relative 'aws-sdk-verifiedpermissions/endpoint_provider'
require_relative 'aws-sdk-verifiedpermissions/endpoints'
require_relative 'aws-sdk-verifiedpermissions/customizations'

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
#     resp = verified_permissions.create_identity_source(params)
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

  GEM_VERSION = '1.7.0'

end
