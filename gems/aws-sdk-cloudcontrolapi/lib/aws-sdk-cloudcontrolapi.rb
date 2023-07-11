# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudcontrolapi/types'
require_relative 'aws-sdk-cloudcontrolapi/client_api'
require_relative 'aws-sdk-cloudcontrolapi/plugins/endpoints.rb'
require_relative 'aws-sdk-cloudcontrolapi/client'
require_relative 'aws-sdk-cloudcontrolapi/errors'
require_relative 'aws-sdk-cloudcontrolapi/waiters'
require_relative 'aws-sdk-cloudcontrolapi/resource'
require_relative 'aws-sdk-cloudcontrolapi/endpoint_parameters'
require_relative 'aws-sdk-cloudcontrolapi/endpoint_provider'
require_relative 'aws-sdk-cloudcontrolapi/endpoints'
require_relative 'aws-sdk-cloudcontrolapi/customizations'

# This module provides support for AWS Cloud Control API. This module is available in the
# `aws-sdk-cloudcontrolapi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_control_api = Aws::CloudControlApi::Client.new
#     resp = cloud_control_api.cancel_resource_request(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cloud Control API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudControlApi::Errors::ServiceError
#       # rescues all AWS Cloud Control API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudControlApi

  GEM_VERSION = '1.15.0'

end
