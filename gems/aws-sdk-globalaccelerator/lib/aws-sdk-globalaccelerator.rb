# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:globalaccelerator)

# This module provides support for AWS Global Accelerator. This module is available in the
# `aws-sdk-globalaccelerator` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     global_accelerator = Aws::GlobalAccelerator::Client.new
#     resp = global_accelerator.add_custom_routing_endpoints(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Global Accelerator are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GlobalAccelerator::Errors::ServiceError
#       # rescues all AWS Global Accelerator API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GlobalAccelerator
  autoload :Types, 'aws-sdk-globalaccelerator/types'
  autoload :ClientApi, 'aws-sdk-globalaccelerator/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-globalaccelerator/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-globalaccelerator/client'
  autoload :Errors, 'aws-sdk-globalaccelerator/errors'
  autoload :Resource, 'aws-sdk-globalaccelerator/resource'
  autoload :EndpointParameters, 'aws-sdk-globalaccelerator/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-globalaccelerator/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-globalaccelerator/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-globalaccelerator/customizations'
