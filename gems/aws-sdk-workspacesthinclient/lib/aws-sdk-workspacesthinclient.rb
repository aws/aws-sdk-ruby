# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workspacesthinclient/types'
require_relative 'aws-sdk-workspacesthinclient/client_api'
require_relative 'aws-sdk-workspacesthinclient/plugins/endpoints.rb'
require_relative 'aws-sdk-workspacesthinclient/client'
require_relative 'aws-sdk-workspacesthinclient/errors'
require_relative 'aws-sdk-workspacesthinclient/resource'
require_relative 'aws-sdk-workspacesthinclient/endpoint_parameters'
require_relative 'aws-sdk-workspacesthinclient/endpoint_provider'
require_relative 'aws-sdk-workspacesthinclient/endpoints'
require_relative 'aws-sdk-workspacesthinclient/customizations'

# This module provides support for Amazon WorkSpaces Thin Client. This module is available in the
# `aws-sdk-workspacesthinclient` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_spaces_thin_client = Aws::WorkSpacesThinClient::Client.new
#     resp = work_spaces_thin_client.create_environment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkSpaces Thin Client are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkSpacesThinClient::Errors::ServiceError
#       # rescues all Amazon WorkSpaces Thin Client API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkSpacesThinClient

  GEM_VERSION = '1.2.0'

end
