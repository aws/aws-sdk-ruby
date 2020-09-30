# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-timestreamquery/types'
require_relative 'aws-sdk-timestreamquery/client_api'
require_relative 'aws-sdk-timestreamquery/client'
require_relative 'aws-sdk-timestreamquery/errors'
require_relative 'aws-sdk-timestreamquery/resource'
require_relative 'aws-sdk-timestreamquery/customizations'

# This module provides support for Amazon Timestream Query. This module is available in the
# `aws-sdk-timestreamquery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     timestream_query = Aws::TimestreamQuery::Client.new
#     resp = timestream_query.cancel_query(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Timestream Query are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TimestreamQuery::Errors::ServiceError
#       # rescues all Amazon Timestream Query API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TimestreamQuery

  GEM_VERSION = '1.1.0'

end
