# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-eksauth/types'
require_relative 'aws-sdk-eksauth/client_api'
require_relative 'aws-sdk-eksauth/plugins/endpoints.rb'
require_relative 'aws-sdk-eksauth/client'
require_relative 'aws-sdk-eksauth/errors'
require_relative 'aws-sdk-eksauth/waiters'
require_relative 'aws-sdk-eksauth/resource'
require_relative 'aws-sdk-eksauth/endpoint_parameters'
require_relative 'aws-sdk-eksauth/endpoint_provider'
require_relative 'aws-sdk-eksauth/endpoints'
require_relative 'aws-sdk-eksauth/customizations'

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

  GEM_VERSION = '1.2.0'

end
