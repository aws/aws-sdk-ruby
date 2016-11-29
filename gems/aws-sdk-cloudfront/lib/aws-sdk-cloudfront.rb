# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cloudfront/types'
require_relative 'aws-sdk-cloudfront/client_api'
require_relative 'aws-sdk-cloudfront/client'
require_relative 'aws-sdk-cloudfront/errors'
require_relative 'aws-sdk-cloudfront/waiters'
require_relative 'aws-sdk-cloudfront/resource'
require_relative 'aws-sdk-cloudfront/customizations'

module Aws
  # @service
  # This module provides support for Amazon CloudFront, which shipped in `aws-sdk-cloudfront` gem.
  #
  # # Aws::CloudFront::Client
  #
  # The {Aws::CloudFront::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudfront = Aws::CloudFront::Client.new
  #     resp = cloudfront.create_cloud_front_origin_access_identity(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudFront::Errors
  #
  # Errors returned from Amazon CloudFront all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFront::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudFront

    GEM_VERSION = '1.0.0.rc1'

  end
end
