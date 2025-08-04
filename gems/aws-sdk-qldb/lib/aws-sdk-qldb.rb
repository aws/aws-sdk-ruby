# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:qldb)

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
  autoload :Types, 'aws-sdk-qldb/types'
  autoload :ClientApi, 'aws-sdk-qldb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-qldb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-qldb/client'
  autoload :Errors, 'aws-sdk-qldb/errors'
  autoload :Resource, 'aws-sdk-qldb/resource'
  autoload :EndpointParameters, 'aws-sdk-qldb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-qldb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-qldb/endpoints'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-qldb/customizations'
