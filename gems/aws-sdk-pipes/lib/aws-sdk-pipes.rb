# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pipes)

# This module provides support for Amazon EventBridge Pipes. This module is available in the
# `aws-sdk-pipes` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pipes = Aws::Pipes::Client.new
#     resp = pipes.create_pipe(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridge Pipes are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pipes::Errors::ServiceError
#       # rescues all Amazon EventBridge Pipes API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Pipes
  autoload :Types, 'aws-sdk-pipes/types'
  autoload :ClientApi, 'aws-sdk-pipes/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pipes/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pipes/client'
  autoload :Errors, 'aws-sdk-pipes/errors'
  autoload :Waiters, 'aws-sdk-pipes/waiters'
  autoload :Resource, 'aws-sdk-pipes/resource'
  autoload :EndpointParameters, 'aws-sdk-pipes/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pipes/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pipes/endpoints'

  GEM_VERSION = '1.40.0'

end

require_relative 'aws-sdk-pipes/customizations'
