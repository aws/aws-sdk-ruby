# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudfront)

# This module provides support for Amazon CloudFront. This module is available in the
# `aws-sdk-cloudfront` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_front = Aws::CloudFront::Client.new
#     resp = cloud_front.associate_alias(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudFront are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudFront::Errors::ServiceError
#       # rescues all Amazon CloudFront API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudFront
  autoload :Types, 'aws-sdk-cloudfront/types'
  autoload :ClientApi, 'aws-sdk-cloudfront/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudfront/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudfront/client'
  autoload :Errors, 'aws-sdk-cloudfront/errors'
  autoload :Waiters, 'aws-sdk-cloudfront/waiters'
  autoload :Resource, 'aws-sdk-cloudfront/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudfront/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudfront/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudfront/endpoints'

  GEM_VERSION = '1.131.0'

end

require_relative 'aws-sdk-cloudfront/customizations'
