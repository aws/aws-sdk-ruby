# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-resourcegroupstaggingapi/types'
require_relative 'aws-sdk-resourcegroupstaggingapi/client_api'
require_relative 'aws-sdk-resourcegroupstaggingapi/plugins/endpoints.rb'
require_relative 'aws-sdk-resourcegroupstaggingapi/client'
require_relative 'aws-sdk-resourcegroupstaggingapi/errors'
require_relative 'aws-sdk-resourcegroupstaggingapi/resource'
require_relative 'aws-sdk-resourcegroupstaggingapi/endpoint_parameters'
require_relative 'aws-sdk-resourcegroupstaggingapi/endpoint_provider'
require_relative 'aws-sdk-resourcegroupstaggingapi/endpoints'
require_relative 'aws-sdk-resourcegroupstaggingapi/customizations'

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

  GEM_VERSION = '1.54.0'

end
