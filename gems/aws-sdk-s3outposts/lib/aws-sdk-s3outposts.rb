# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3outposts)

# This module provides support for Amazon S3 on Outposts. This module is available in the
# `aws-sdk-s3outposts` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     s3_outposts = Aws::S3Outposts::Client.new
#     resp = s3_outposts.create_endpoint(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon S3 on Outposts are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Outposts::Errors::ServiceError
#       # rescues all Amazon S3 on Outposts API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::S3Outposts
  autoload :Types, 'aws-sdk-s3outposts/types'
  autoload :ClientApi, 'aws-sdk-s3outposts/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-s3outposts/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-s3outposts/client'
  autoload :Errors, 'aws-sdk-s3outposts/errors'
  autoload :Resource, 'aws-sdk-s3outposts/resource'
  autoload :EndpointParameters, 'aws-sdk-s3outposts/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-s3outposts/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-s3outposts/endpoints'

  GEM_VERSION = '1.49.0'

end

require_relative 'aws-sdk-s3outposts/customizations'
