# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:eksauth)

# This module provides support for Amazon EKS Auth. This module is available in the
# `aws-sdk-eksauth` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     eks_auth = Aws::EKSAuth::Client.new
#     resp = eks_auth.assume_role_for_pod_identity(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EKS Auth are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EKSAuth::Errors::ServiceError
#       # rescues all Amazon EKS Auth API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EKSAuth
  autoload :Types, 'aws-sdk-eksauth/types'
  autoload :ClientApi, 'aws-sdk-eksauth/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-eksauth/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-eksauth/client'
  autoload :Errors, 'aws-sdk-eksauth/errors'
  autoload :Waiters, 'aws-sdk-eksauth/waiters'
  autoload :Resource, 'aws-sdk-eksauth/resource'
  autoload :EndpointParameters, 'aws-sdk-eksauth/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-eksauth/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-eksauth/endpoints'

  GEM_VERSION = '1.17.0'

end

require_relative 'aws-sdk-eksauth/customizations'
