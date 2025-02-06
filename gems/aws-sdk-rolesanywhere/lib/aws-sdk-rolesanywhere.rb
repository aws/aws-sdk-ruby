# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:rolesanywhere)

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
  autoload :Types, 'aws-sdk-rolesanywhere/types'
  autoload :ClientApi, 'aws-sdk-rolesanywhere/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-rolesanywhere/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-rolesanywhere/client'
  autoload :Errors, 'aws-sdk-rolesanywhere/errors'
  autoload :Resource, 'aws-sdk-rolesanywhere/resource'
  autoload :EndpointParameters, 'aws-sdk-rolesanywhere/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-rolesanywhere/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-rolesanywhere/endpoints'

  GEM_VERSION = '1.32.0'

end

require_relative 'aws-sdk-rolesanywhere/customizations'
