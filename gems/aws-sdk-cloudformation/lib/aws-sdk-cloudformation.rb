# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudformation)

# This module provides support for AWS CloudFormation. This module is available in the
# `aws-sdk-cloudformation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_formation = Aws::CloudFormation::Client.new
#     resp = cloud_formation.activate_organizations_access(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CloudFormation are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudFormation::Errors::ServiceError
#       # rescues all AWS CloudFormation API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudFormation
  autoload :Types, 'aws-sdk-cloudformation/types'
  autoload :ClientApi, 'aws-sdk-cloudformation/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudformation/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudformation/client'
  autoload :Errors, 'aws-sdk-cloudformation/errors'
  autoload :Waiters, 'aws-sdk-cloudformation/waiters'
  autoload :Resource, 'aws-sdk-cloudformation/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudformation/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudformation/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudformation/endpoints'
  autoload :Event, 'aws-sdk-cloudformation/event'
  autoload :Stack, 'aws-sdk-cloudformation/stack'
  autoload :StackResource, 'aws-sdk-cloudformation/stack_resource'
  autoload :StackResourceSummary, 'aws-sdk-cloudformation/stack_resource_summary'

  GEM_VERSION = '1.138.0'

end

require_relative 'aws-sdk-cloudformation/customizations'
