# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerjobruntime)

# This module provides support for Sagemaker Job Runtime Service. This module is available in the
# `aws-sdk-sagemakerjobruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sagemaker_job_runtime = Aws::SagemakerJobRuntime::Client.new
#     resp = sagemaker_job_runtime.complete_rollout(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Sagemaker Job Runtime Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SagemakerJobRuntime::Errors::ServiceError
#       # rescues all Sagemaker Job Runtime Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SagemakerJobRuntime
  autoload :Types, 'aws-sdk-sagemakerjobruntime/types'
  autoload :ClientApi, 'aws-sdk-sagemakerjobruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakerjobruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakerjobruntime/client'
  autoload :Errors, 'aws-sdk-sagemakerjobruntime/errors'
  autoload :Resource, 'aws-sdk-sagemakerjobruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakerjobruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakerjobruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakerjobruntime/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-sagemakerjobruntime/customizations'
