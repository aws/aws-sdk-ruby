# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pcs/types'
require_relative 'aws-sdk-pcs/client_api'
require_relative 'aws-sdk-pcs/plugins/endpoints.rb'
require_relative 'aws-sdk-pcs/client'
require_relative 'aws-sdk-pcs/errors'
require_relative 'aws-sdk-pcs/waiters'
require_relative 'aws-sdk-pcs/resource'
require_relative 'aws-sdk-pcs/endpoint_parameters'
require_relative 'aws-sdk-pcs/endpoint_provider'
require_relative 'aws-sdk-pcs/endpoints'
require_relative 'aws-sdk-pcs/customizations'

# This module provides support for AWS Parallel Computing Service. This module is available in the
# `aws-sdk-pcs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pcs = Aws::PCS::Client.new
#     resp = pcs.create_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Parallel Computing Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PCS::Errors::ServiceError
#       # rescues all AWS Parallel Computing Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PCS

  GEM_VERSION = '1.0.0'

end
