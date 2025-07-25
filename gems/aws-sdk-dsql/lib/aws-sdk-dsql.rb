# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:dsql)

# This module provides support for Amazon Aurora DSQL. This module is available in the
# `aws-sdk-dsql` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dsql = Aws::DSQL::Client.new
#     resp = dsql.create_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Aurora DSQL are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DSQL::Errors::ServiceError
#       # rescues all Amazon Aurora DSQL API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DSQL
  autoload :Types, 'aws-sdk-dsql/types'
  autoload :ClientApi, 'aws-sdk-dsql/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-dsql/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-dsql/client'
  autoload :Errors, 'aws-sdk-dsql/errors'
  autoload :Waiters, 'aws-sdk-dsql/waiters'
  autoload :Resource, 'aws-sdk-dsql/resource'
  autoload :EndpointParameters, 'aws-sdk-dsql/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-dsql/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-dsql/endpoints'

  GEM_VERSION = '1.12.0'

end

require_relative 'aws-sdk-dsql/customizations'
