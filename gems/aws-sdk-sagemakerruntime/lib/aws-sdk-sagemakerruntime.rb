# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerruntime)

# This module provides support for Amazon SageMaker Runtime. This module is available in the
# `aws-sdk-sagemakerruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_runtime = Aws::SageMakerRuntime::Client.new
#     resp = sage_maker_runtime.invoke_endpoint(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerRuntime::Errors::ServiceError
#       # rescues all Amazon SageMaker Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerRuntime
  autoload :Types, 'aws-sdk-sagemakerruntime/types'
  autoload :ClientApi, 'aws-sdk-sagemakerruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakerruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakerruntime/client'
  autoload :Errors, 'aws-sdk-sagemakerruntime/errors'
  autoload :Resource, 'aws-sdk-sagemakerruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakerruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakerruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakerruntime/endpoints'
  autoload :EventStreams, 'aws-sdk-sagemakerruntime/event_streams'

  GEM_VERSION = '1.89.0'

end

require_relative 'aws-sdk-sagemakerruntime/customizations'
