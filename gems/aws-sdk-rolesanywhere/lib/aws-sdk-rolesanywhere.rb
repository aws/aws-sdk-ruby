# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-rolesanywhere/types'
require_relative 'aws-sdk-rolesanywhere/client_api'
require_relative 'aws-sdk-rolesanywhere/plugins/endpoints.rb'
require_relative 'aws-sdk-rolesanywhere/client'
require_relative 'aws-sdk-rolesanywhere/errors'
require_relative 'aws-sdk-rolesanywhere/resource'
require_relative 'aws-sdk-rolesanywhere/endpoint_parameters'
require_relative 'aws-sdk-rolesanywhere/endpoint_provider'
require_relative 'aws-sdk-rolesanywhere/endpoints'
require_relative 'aws-sdk-rolesanywhere/customizations'

# This module provides support for IAM Roles Anywhere. This module is available in the
# `aws-sdk-rolesanywhere` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     roles_anywhere = Aws::RolesAnywhere::Client.new
#     resp = roles_anywhere.create_profile(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from IAM Roles Anywhere are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RolesAnywhere::Errors::ServiceError
#       # rescues all IAM Roles Anywhere API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RolesAnywhere

  GEM_VERSION = '1.8.0'

end
