# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pcs)

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
  autoload :Types, 'aws-sdk-pcs/types'
  autoload :ClientApi, 'aws-sdk-pcs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pcs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pcs/client'
  autoload :Errors, 'aws-sdk-pcs/errors'
  autoload :Waiters, 'aws-sdk-pcs/waiters'
  autoload :Resource, 'aws-sdk-pcs/resource'
  autoload :EndpointParameters, 'aws-sdk-pcs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pcs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pcs/endpoints'

  GEM_VERSION = '1.12.0'

end

require_relative 'aws-sdk-pcs/customizations'
