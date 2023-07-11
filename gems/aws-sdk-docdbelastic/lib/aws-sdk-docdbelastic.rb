# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-docdbelastic/types'
require_relative 'aws-sdk-docdbelastic/client_api'
require_relative 'aws-sdk-docdbelastic/plugins/endpoints.rb'
require_relative 'aws-sdk-docdbelastic/client'
require_relative 'aws-sdk-docdbelastic/errors'
require_relative 'aws-sdk-docdbelastic/resource'
require_relative 'aws-sdk-docdbelastic/endpoint_parameters'
require_relative 'aws-sdk-docdbelastic/endpoint_provider'
require_relative 'aws-sdk-docdbelastic/endpoints'
require_relative 'aws-sdk-docdbelastic/customizations'

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
#     resp = doc_db_elastic.create_cluster(params)
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

  GEM_VERSION = '1.6.0'

end
