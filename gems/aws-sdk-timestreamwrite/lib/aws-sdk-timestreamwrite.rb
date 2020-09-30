# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-timestreamwrite/types'
require_relative 'aws-sdk-timestreamwrite/client_api'
require_relative 'aws-sdk-timestreamwrite/client'
require_relative 'aws-sdk-timestreamwrite/errors'
require_relative 'aws-sdk-timestreamwrite/resource'
require_relative 'aws-sdk-timestreamwrite/customizations'

# This module provides support for Amazon Timestream Write. This module is available in the
# `aws-sdk-timestreamwrite` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     timestream_write = Aws::TimestreamWrite::Client.new
#     resp = timestream_write.create_database(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Timestream Write are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TimestreamWrite::Errors::ServiceError
#       # rescues all Amazon Timestream Write API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TimestreamWrite

  GEM_VERSION = '1.1.0'

end
