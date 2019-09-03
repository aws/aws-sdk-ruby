# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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

# This module provides support for Amazon CloudFront. This module is available in the
# `aws-sdk-cloudfront` gem.
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
#
# @service
module Aws::CloudFront

  GEM_VERSION = '1.22.0'

end
