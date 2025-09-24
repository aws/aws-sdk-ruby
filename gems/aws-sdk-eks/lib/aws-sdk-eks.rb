# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:eks)

# This module provides support for Amazon Elastic Kubernetes Service. This module is available in the
# `aws-sdk-eks` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     eks = Aws::EKS::Client.new
#     resp = eks.associate_access_policy(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Kubernetes Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EKS::Errors::ServiceError
#       # rescues all Amazon Elastic Kubernetes Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EKS
  autoload :Types, 'aws-sdk-eks/types'
  autoload :ClientApi, 'aws-sdk-eks/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-eks/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-eks/client'
  autoload :Errors, 'aws-sdk-eks/errors'
  autoload :Waiters, 'aws-sdk-eks/waiters'
  autoload :Resource, 'aws-sdk-eks/resource'
  autoload :EndpointParameters, 'aws-sdk-eks/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-eks/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-eks/endpoints'

  GEM_VERSION = '1.148.0'

end

require_relative 'aws-sdk-eks/customizations'
