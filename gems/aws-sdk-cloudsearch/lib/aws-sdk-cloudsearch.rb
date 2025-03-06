# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudsearch)

# This module provides support for Amazon CloudSearch. This module is available in the
# `aws-sdk-cloudsearch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_search = Aws::CloudSearch::Client.new
#     resp = cloud_search.build_suggesters(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudSearch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudSearch::Errors::ServiceError
#       # rescues all Amazon CloudSearch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudSearch
  autoload :Types, 'aws-sdk-cloudsearch/types'
  autoload :ClientApi, 'aws-sdk-cloudsearch/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudsearch/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudsearch/client'
  autoload :Errors, 'aws-sdk-cloudsearch/errors'
  autoload :Resource, 'aws-sdk-cloudsearch/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudsearch/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudsearch/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudsearch/endpoints'

  GEM_VERSION = '1.72.0'

end

require_relative 'aws-sdk-cloudsearch/customizations'
