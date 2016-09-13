# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-simpledb/types'
require_relative 'aws-sdk-simpledb/client_api'
require_relative 'aws-sdk-simpledb/client'
require_relative 'aws-sdk-simpledb/errors'
require_relative 'aws-sdk-simpledb/waiters'
require_relative 'aws-sdk-simpledb/resource'

module Aws
  # This module provides support for Amazon SimpleDB.
  #
  # # Aws::SimpleDB::Client
  #
  # The {Aws::SimpleDB::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     simpledb = Aws::SimpleDB::Client.new
  #     resp = simpledb.batch_delete_attributes(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SimpleDB::Errors
  #
  # Errors returned from Amazon SimpleDB all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SimpleDB::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SimpleDB

    GEM_VERSION = '1.0.0'

  end
end
