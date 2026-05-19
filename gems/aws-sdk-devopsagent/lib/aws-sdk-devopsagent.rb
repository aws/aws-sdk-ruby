# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:devopsagent)

# This module provides support for AWS DevOps Agent Service. This module is available in the
# `aws-sdk-devopsagent` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dev_ops_agent = Aws::DevOpsAgent::Client.new
#     resp = dev_ops_agent.associate_service(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS DevOps Agent Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DevOpsAgent::Errors::ServiceError
#       # rescues all AWS DevOps Agent Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DevOpsAgent
  autoload :Types, 'aws-sdk-devopsagent/types'
  autoload :ClientApi, 'aws-sdk-devopsagent/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-devopsagent/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-devopsagent/client'
  autoload :Errors, 'aws-sdk-devopsagent/errors'
  autoload :Resource, 'aws-sdk-devopsagent/resource'
  autoload :EndpointParameters, 'aws-sdk-devopsagent/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-devopsagent/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-devopsagent/endpoints'
  autoload :EventStreams, 'aws-sdk-devopsagent/event_streams'

  GEM_VERSION = '1.4.0'

end

require_relative 'aws-sdk-devopsagent/customizations'
