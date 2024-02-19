# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-eks/types'
require_relative 'aws-sdk-eks/client_api'
require_relative 'aws-sdk-eks/plugins/endpoints.rb'
require_relative 'aws-sdk-eks/client'
require_relative 'aws-sdk-eks/errors'
require_relative 'aws-sdk-eks/waiters'
require_relative 'aws-sdk-eks/resource'
require_relative 'aws-sdk-eks/endpoint_parameters'
require_relative 'aws-sdk-eks/endpoint_provider'
require_relative 'aws-sdk-eks/endpoints'
require_relative 'aws-sdk-eks/customizations'

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

  GEM_VERSION = '1.98.0'

end
