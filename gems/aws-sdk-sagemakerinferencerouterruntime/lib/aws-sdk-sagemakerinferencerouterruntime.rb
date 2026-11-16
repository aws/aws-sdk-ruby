# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerinferencerouterruntime)

# This module provides support for Amazon SageMaker Inference Router Runtime. This module is available in the
# `aws-sdk-sagemakerinferencerouterruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_inference_router_runtime = Aws::SageMakerInferenceRouterRuntime::Client.new
#     resp = sage_maker_inference_router_runtime.invoke_inference_router(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Inference Router Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerInferenceRouterRuntime::Errors::ServiceError
#       # rescues all Amazon SageMaker Inference Router Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerInferenceRouterRuntime
  autoload :Types, 'aws-sdk-sagemakerinferencerouterruntime/types'
  autoload :ClientApi, 'aws-sdk-sagemakerinferencerouterruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakerinferencerouterruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakerinferencerouterruntime/client'
  autoload :Errors, 'aws-sdk-sagemakerinferencerouterruntime/errors'
  autoload :Resource, 'aws-sdk-sagemakerinferencerouterruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakerinferencerouterruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakerinferencerouterruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakerinferencerouterruntime/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-sagemakerinferencerouterruntime/customizations'
