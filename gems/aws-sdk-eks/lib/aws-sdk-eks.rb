# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-eks/types'
require_relative 'aws-sdk-eks/client_api'
require_relative 'aws-sdk-eks/client'
require_relative 'aws-sdk-eks/errors'
require_relative 'aws-sdk-eks/waiters'
require_relative 'aws-sdk-eks/resource'
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
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Kubernetes Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EKS::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::EKS

  GEM_VERSION = '1.24.0'

end
