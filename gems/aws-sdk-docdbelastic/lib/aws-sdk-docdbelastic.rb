# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:docdbelastic)

# This module provides support for Amazon DocumentDB Elastic Clusters. This module is available in the
# `aws-sdk-docdbelastic` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     doc_db_elastic = Aws::DocDBElastic::Client.new
#     resp = doc_db_elastic.apply_pending_maintenance_action(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DocumentDB Elastic Clusters are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DocDBElastic::Errors::ServiceError
#       # rescues all Amazon DocumentDB Elastic Clusters API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DocDBElastic
  autoload :Types, 'aws-sdk-docdbelastic/types'
  autoload :ClientApi, 'aws-sdk-docdbelastic/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-docdbelastic/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-docdbelastic/client'
  autoload :Errors, 'aws-sdk-docdbelastic/errors'
  autoload :Resource, 'aws-sdk-docdbelastic/resource'
  autoload :EndpointParameters, 'aws-sdk-docdbelastic/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-docdbelastic/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-docdbelastic/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-docdbelastic/customizations'
