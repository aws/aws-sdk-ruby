# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ecr/customizations'
require_relative 'aws-sdk-ecr/railtie' if defined?(Rails::Railtie)

# This module provides support for Amazon EC2 Container Registry. This module is available in the
# `aws-sdk-ecr` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ecr = Aws::ECR::Client.new
#     resp = ecr.batch_check_layer_availability(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EC2 Container Registry are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ECR::Errors::ServiceError
#       # rescues all Amazon EC2 Container Registry API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ECR
  autoload :Types, 'aws-sdk-ecr/types'
  autoload :ClientApi, 'aws-sdk-ecr/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ecr/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ecr/client'
  autoload :Errors, 'aws-sdk-ecr/errors'
  autoload :Waiters, 'aws-sdk-ecr/waiters'
  autoload :Resource, 'aws-sdk-ecr/resource'
  autoload :EndpointParameters, 'aws-sdk-ecr/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ecr/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ecr/endpoints'

  GEM_VERSION = '1.81.0'

end
