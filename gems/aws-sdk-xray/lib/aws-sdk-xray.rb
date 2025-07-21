# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:xray)

# This module provides support for AWS X-Ray. This module is available in the
# `aws-sdk-xray` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     x_ray = Aws::XRay::Client.new
#     resp = x_ray.batch_get_traces(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS X-Ray are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::XRay::Errors::ServiceError
#       # rescues all AWS X-Ray API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::XRay
  autoload :Types, 'aws-sdk-xray/types'
  autoload :ClientApi, 'aws-sdk-xray/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-xray/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-xray/client'
  autoload :Errors, 'aws-sdk-xray/errors'
  autoload :Resource, 'aws-sdk-xray/resource'
  autoload :EndpointParameters, 'aws-sdk-xray/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-xray/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-xray/endpoints'

  GEM_VERSION = '1.85.0'

end

require_relative 'aws-sdk-xray/customizations'
