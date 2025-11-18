# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroupstaggingapi)

# This module provides support for AWS Resource Groups Tagging API. This module is available in the
# `aws-sdk-resourcegroupstaggingapi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resource_groups_tagging_api = Aws::ResourceGroupsTaggingAPI::Client.new
#     resp = resource_groups_tagging_api.describe_report_creation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Groups Tagging API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResourceGroupsTaggingAPI::Errors::ServiceError
#       # rescues all AWS Resource Groups Tagging API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResourceGroupsTaggingAPI
  autoload :Types, 'aws-sdk-resourcegroupstaggingapi/types'
  autoload :ClientApi, 'aws-sdk-resourcegroupstaggingapi/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-resourcegroupstaggingapi/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-resourcegroupstaggingapi/client'
  autoload :Errors, 'aws-sdk-resourcegroupstaggingapi/errors'
  autoload :Resource, 'aws-sdk-resourcegroupstaggingapi/resource'
  autoload :EndpointParameters, 'aws-sdk-resourcegroupstaggingapi/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-resourcegroupstaggingapi/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-resourcegroupstaggingapi/endpoints'

  GEM_VERSION = '1.88.0'

end

require_relative 'aws-sdk-resourcegroupstaggingapi/customizations'
