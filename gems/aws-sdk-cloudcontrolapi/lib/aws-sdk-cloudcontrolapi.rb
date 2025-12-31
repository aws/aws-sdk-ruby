# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudcontrolapi)

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
  autoload :Types, 'aws-sdk-cloudcontrolapi/types'
  autoload :ClientApi, 'aws-sdk-cloudcontrolapi/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudcontrolapi/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudcontrolapi/client'
  autoload :Errors, 'aws-sdk-cloudcontrolapi/errors'
  autoload :Waiters, 'aws-sdk-cloudcontrolapi/waiters'
  autoload :Resource, 'aws-sdk-cloudcontrolapi/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudcontrolapi/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudcontrolapi/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudcontrolapi/endpoints'

  GEM_VERSION = '1.48.0'

end

require_relative 'aws-sdk-cloudcontrolapi/customizations'
