# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:opsworks)

# This module provides support for AWS OpsWorks. This module is available in the
# `aws-sdk-opsworks` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ops_works = Aws::OpsWorks::Client.new
#     resp = ops_works.assign_instance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS OpsWorks are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpsWorks::Errors::ServiceError
#       # rescues all AWS OpsWorks API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpsWorks
  autoload :Types, 'aws-sdk-opsworks/types'
  autoload :ClientApi, 'aws-sdk-opsworks/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-opsworks/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-opsworks/client'
  autoload :Errors, 'aws-sdk-opsworks/errors'
  autoload :Waiters, 'aws-sdk-opsworks/waiters'
  autoload :Resource, 'aws-sdk-opsworks/resource'
  autoload :EndpointParameters, 'aws-sdk-opsworks/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-opsworks/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-opsworks/endpoints'
  autoload :Layer, 'aws-sdk-opsworks/layer'
  autoload :Stack, 'aws-sdk-opsworks/stack'
  autoload :StackSummary, 'aws-sdk-opsworks/stack_summary'

  GEM_VERSION = '1.71.0'

end

require_relative 'aws-sdk-opsworks/customizations'
