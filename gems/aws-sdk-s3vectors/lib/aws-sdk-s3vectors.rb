# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3vectors)

# This module provides support for Amazon S3 Vectors. This module is available in the
# `aws-sdk-s3vectors` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     s3_vectors = Aws::S3Vectors::Client.new
#     resp = s3_vectors.create_index(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon S3 Vectors are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Vectors::Errors::ServiceError
#       # rescues all Amazon S3 Vectors API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::S3Vectors
  autoload :Types, 'aws-sdk-s3vectors/types'
  autoload :ClientApi, 'aws-sdk-s3vectors/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-s3vectors/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-s3vectors/client'
  autoload :Errors, 'aws-sdk-s3vectors/errors'
  autoload :Waiters, 'aws-sdk-s3vectors/waiters'
  autoload :Resource, 'aws-sdk-s3vectors/resource'
  autoload :EndpointParameters, 'aws-sdk-s3vectors/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-s3vectors/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-s3vectors/endpoints'

  GEM_VERSION = '1.3.0'

end

require_relative 'aws-sdk-s3vectors/customizations'
