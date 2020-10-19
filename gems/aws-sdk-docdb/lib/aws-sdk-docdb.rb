# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-docdb/types'
require_relative 'aws-sdk-docdb/client_api'
require_relative 'aws-sdk-docdb/client'
require_relative 'aws-sdk-docdb/errors'
require_relative 'aws-sdk-docdb/waiters'
require_relative 'aws-sdk-docdb/resource'
require_relative 'aws-sdk-docdb/customizations'

# This module provides support for Amazon DocumentDB with MongoDB compatibility. This module is available in the
# `aws-sdk-docdb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     doc_db = Aws::DocDB::Client.new
#     resp = doc_db.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DocumentDB with MongoDB compatibility are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DocDB::Errors::ServiceError
#       # rescues all Amazon DocumentDB with MongoDB compatibility API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DocDB

  GEM_VERSION = '1.26.0'

end
