# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:agentregistry)

# This module provides support for Agent Registry. This module is available in the
# `aws-sdk-agentregistry` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     agent_registry = Aws::AgentRegistry::Client.new
#     resp = agent_registry.batch_get_discoverable_registry_record(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Agent Registry are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AgentRegistry::Errors::ServiceError
#       # rescues all Agent Registry API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AgentRegistry
  autoload :Types, 'aws-sdk-agentregistry/types'
  autoload :ClientApi, 'aws-sdk-agentregistry/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-agentregistry/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-agentregistry/client'
  autoload :Errors, 'aws-sdk-agentregistry/errors'
  autoload :Resource, 'aws-sdk-agentregistry/resource'
  autoload :EndpointParameters, 'aws-sdk-agentregistry/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-agentregistry/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-agentregistry/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-agentregistry/customizations'
