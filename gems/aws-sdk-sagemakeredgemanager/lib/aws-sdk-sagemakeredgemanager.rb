# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakeredgemanager)

# This module provides support for Amazon Sagemaker Edge Manager. This module is available in the
# `aws-sdk-sagemakeredgemanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sagemaker_edge_manager = Aws::SagemakerEdgeManager::Client.new
#     resp = sagemaker_edge_manager.get_deployments(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Sagemaker Edge Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SagemakerEdgeManager::Errors::ServiceError
#       # rescues all Amazon Sagemaker Edge Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SagemakerEdgeManager
  autoload :Types, 'aws-sdk-sagemakeredgemanager/types'
  autoload :ClientApi, 'aws-sdk-sagemakeredgemanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakeredgemanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakeredgemanager/client'
  autoload :Errors, 'aws-sdk-sagemakeredgemanager/errors'
  autoload :Resource, 'aws-sdk-sagemakeredgemanager/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakeredgemanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakeredgemanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakeredgemanager/endpoints'

  GEM_VERSION = '1.47.0'

end

require_relative 'aws-sdk-sagemakeredgemanager/customizations'
