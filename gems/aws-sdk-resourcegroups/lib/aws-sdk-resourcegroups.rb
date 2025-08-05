# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroups)

# This module provides support for AWS Resource Groups. This module is available in the
# `aws-sdk-resourcegroups` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resource_groups = Aws::ResourceGroups::Client.new
#     resp = resource_groups.cancel_tag_sync_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Groups are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResourceGroups::Errors::ServiceError
#       # rescues all AWS Resource Groups API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResourceGroups
  autoload :Types, 'aws-sdk-resourcegroups/types'
  autoload :ClientApi, 'aws-sdk-resourcegroups/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-resourcegroups/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-resourcegroups/client'
  autoload :Errors, 'aws-sdk-resourcegroups/errors'
  autoload :Resource, 'aws-sdk-resourcegroups/resource'
  autoload :EndpointParameters, 'aws-sdk-resourcegroups/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-resourcegroups/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-resourcegroups/endpoints'

  GEM_VERSION = '1.86.0'

end

require_relative 'aws-sdk-resourcegroups/customizations'
