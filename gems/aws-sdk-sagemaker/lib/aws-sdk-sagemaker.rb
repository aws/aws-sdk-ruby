# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemaker)

# This module provides support for Amazon SageMaker Service. This module is available in the
# `aws-sdk-sagemaker` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker = Aws::SageMaker::Client.new
#     resp = sage_maker.add_association(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMaker::Errors::ServiceError
#       # rescues all Amazon SageMaker Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMaker
  autoload :Types, 'aws-sdk-sagemaker/types'
  autoload :ClientApi, 'aws-sdk-sagemaker/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemaker/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemaker/client'
  autoload :Errors, 'aws-sdk-sagemaker/errors'
  autoload :Waiters, 'aws-sdk-sagemaker/waiters'
  autoload :Resource, 'aws-sdk-sagemaker/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemaker/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemaker/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemaker/endpoints'

  GEM_VERSION = '1.328.0'

end

require_relative 'aws-sdk-sagemaker/customizations'
