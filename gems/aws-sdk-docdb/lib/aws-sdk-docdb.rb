# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:docdb)

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
#     resp = doc_db.add_source_identifier_to_subscription(params)
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
  autoload :Types, 'aws-sdk-docdb/types'
  autoload :ClientApi, 'aws-sdk-docdb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-docdb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-docdb/client'
  autoload :Errors, 'aws-sdk-docdb/errors'
  autoload :Waiters, 'aws-sdk-docdb/waiters'
  autoload :Resource, 'aws-sdk-docdb/resource'
  autoload :EndpointParameters, 'aws-sdk-docdb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-docdb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-docdb/endpoints'

  GEM_VERSION = '1.96.0'

end

require_relative 'aws-sdk-docdb/customizations'
