# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-qldb/types'
require_relative 'aws-sdk-qldb/client_api'
require_relative 'aws-sdk-qldb/client'
require_relative 'aws-sdk-qldb/errors'
require_relative 'aws-sdk-qldb/resource'
require_relative 'aws-sdk-qldb/customizations'

# This module provides support for Amazon QLDB. This module is available in the
# `aws-sdk-qldb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     qldb = Aws::QLDB::Client.new
#     resp = qldb.cancel_journal_kinesis_stream(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon QLDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QLDB::Errors::ServiceError
#       # rescues all Amazon QLDB API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QLDB

  GEM_VERSION = '1.11.0'

end
