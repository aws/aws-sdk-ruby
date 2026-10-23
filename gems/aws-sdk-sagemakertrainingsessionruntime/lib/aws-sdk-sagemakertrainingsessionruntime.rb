# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakertrainingsessionruntime)

# This module provides support for SageMaker Training Session Runtime. This module is available in the
# `aws-sdk-sagemakertrainingsessionruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_training_session_runtime = Aws::SageMakerTrainingSessionRuntime::Client.new
#     resp = sage_maker_training_session_runtime.execute_sampling_operation(params)
#
# See {Client} for more information.
#
# # Async Client
#
# The {AsyncClient} class provides one asynchronous method for each API operation.
# Operation methods each accept a hash of request parameters and return an async
# response. For streaming operations, you can signal input events and register
# output event callbacks before waiting on the response.
#
#     sage_maker_training_session_runtime = Aws::SageMakerTrainingSessionRuntime::AsyncClient.new
#     resp = sage_maker_training_session_runtime.execute_sampling_operation(
#       # params and input stream
#      ) do |output_stream|
#       # register callbacks for events
#     end
#
# See {AsyncClient} for more information.
#
# # Errors
#
# Errors returned from SageMaker Training Session Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerTrainingSessionRuntime::Errors::ServiceError
#       # rescues all SageMaker Training Session Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerTrainingSessionRuntime
  autoload :Types, 'aws-sdk-sagemakertrainingsessionruntime/types'
  autoload :ClientApi, 'aws-sdk-sagemakertrainingsessionruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakertrainingsessionruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakertrainingsessionruntime/client'
  autoload :Errors, 'aws-sdk-sagemakertrainingsessionruntime/errors'
  autoload :Waiters, 'aws-sdk-sagemakertrainingsessionruntime/waiters'
  autoload :Resource, 'aws-sdk-sagemakertrainingsessionruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakertrainingsessionruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakertrainingsessionruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakertrainingsessionruntime/endpoints'
  autoload :AsyncClient, 'aws-sdk-sagemakertrainingsessionruntime/async_client'

  GEM_VERSION = '1.3.0'

end

require_relative 'aws-sdk-sagemakertrainingsessionruntime/customizations'
