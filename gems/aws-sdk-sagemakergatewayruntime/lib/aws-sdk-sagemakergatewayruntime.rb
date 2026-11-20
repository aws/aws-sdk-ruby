# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakergatewayruntime)

# This module provides support for Amazon SageMaker Gateway Runtime. This module is available in the
# `aws-sdk-sagemakergatewayruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_gateway_runtime = Aws::SageMakerGatewayRuntime::Client.new
#     resp = sage_maker_gateway_runtime.invoke_global_inference_gateway(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Gateway Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerGatewayRuntime::Errors::ServiceError
#       # rescues all Amazon SageMaker Gateway Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerGatewayRuntime
  autoload :Types, 'aws-sdk-sagemakergatewayruntime/types'
  autoload :ClientApi, 'aws-sdk-sagemakergatewayruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakergatewayruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakergatewayruntime/client'
  autoload :Errors, 'aws-sdk-sagemakergatewayruntime/errors'
  autoload :Resource, 'aws-sdk-sagemakergatewayruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakergatewayruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakergatewayruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakergatewayruntime/endpoints'
  autoload :EventStreams, 'aws-sdk-sagemakergatewayruntime/event_streams'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-sagemakergatewayruntime/customizations'
