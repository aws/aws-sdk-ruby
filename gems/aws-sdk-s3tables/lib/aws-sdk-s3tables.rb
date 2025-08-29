# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3tables)

# This module provides support for Amazon S3 Tables. This module is available in the
# `aws-sdk-s3tables` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     s3_tables = Aws::S3Tables::Client.new
#     resp = s3_tables.create_namespace(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon S3 Tables are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Tables::Errors::ServiceError
#       # rescues all Amazon S3 Tables API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::S3Tables
  autoload :Types, 'aws-sdk-s3tables/types'
  autoload :ClientApi, 'aws-sdk-s3tables/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-s3tables/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-s3tables/client'
  autoload :Errors, 'aws-sdk-s3tables/errors'
  autoload :Waiters, 'aws-sdk-s3tables/waiters'
  autoload :Resource, 'aws-sdk-s3tables/resource'
  autoload :EndpointParameters, 'aws-sdk-s3tables/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-s3tables/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-s3tables/endpoints'

  GEM_VERSION = '1.16.0'

end

require_relative 'aws-sdk-s3tables/customizations'
