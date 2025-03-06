# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv2'

Aws::Plugins::GlobalConfiguration.add_identifier(:simpledb)

# This module provides support for Amazon SimpleDB. This module is available in the
# `aws-sdk-simpledb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     simple_db = Aws::SimpleDB::Client.new
#     resp = simple_db.batch_delete_attributes(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SimpleDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SimpleDB::Errors::ServiceError
#       # rescues all Amazon SimpleDB API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SimpleDB
  autoload :Types, 'aws-sdk-simpledb/types'
  autoload :ClientApi, 'aws-sdk-simpledb/client_api'
  autoload :Client, 'aws-sdk-simpledb/client'
  autoload :Errors, 'aws-sdk-simpledb/errors'
  autoload :Resource, 'aws-sdk-simpledb/resource'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-simpledb/customizations'
