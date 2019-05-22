# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sigv4'
require 'aws-sdk-core'

require_relative 'aws-sdk-s3control/types'
require_relative 'aws-sdk-s3control/client_api'
require_relative 'aws-sdk-s3control/client'
require_relative 'aws-sdk-s3control/errors'
require_relative 'aws-sdk-s3control/resource'
require_relative 'aws-sdk-s3control/customizations'

# This module provides support for AWS S3 Control. This module is available in the
# `aws-sdk-s3control` gem.
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
# Errors returned from AWS S3 Control all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Control::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::S3Control

  GEM_VERSION = '1.8.0'

end
