# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-s3outposts/types'
require_relative 'aws-sdk-s3outposts/client_api'
require_relative 'aws-sdk-s3outposts/client'
require_relative 'aws-sdk-s3outposts/errors'
require_relative 'aws-sdk-s3outposts/resource'
require_relative 'aws-sdk-s3outposts/customizations'

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

  GEM_VERSION = '1.0.0'

end
