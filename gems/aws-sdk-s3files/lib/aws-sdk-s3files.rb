# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3files)

# This module provides support for Amazon S3 Files. This module is available in the
# `aws-sdk-s3files` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     s3_files = Aws::S3Files::Client.new
#     resp = s3_files.create_access_point(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon S3 Files are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Files::Errors::ServiceError
#       # rescues all Amazon S3 Files API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::S3Files
  autoload :Types, 'aws-sdk-s3files/types'
  autoload :ClientApi, 'aws-sdk-s3files/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-s3files/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-s3files/client'
  autoload :Errors, 'aws-sdk-s3files/errors'
  autoload :Waiters, 'aws-sdk-s3files/waiters'
  autoload :Resource, 'aws-sdk-s3files/resource'
  autoload :EndpointParameters, 'aws-sdk-s3files/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-s3files/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-s3files/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-s3files/customizations'
