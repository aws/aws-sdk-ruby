# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:agentdiscovery)

# This module provides support for Agent Discovery. This module is available in the
# `aws-sdk-agentdiscovery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     agent_discovery = Aws::AgentDiscovery::Client.new
#     resp = agent_discovery.search_public_records(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Agent Discovery are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AgentDiscovery::Errors::ServiceError
#       # rescues all Agent Discovery API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AgentDiscovery
  autoload :Types, 'aws-sdk-agentdiscovery/types'
  autoload :ClientApi, 'aws-sdk-agentdiscovery/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-agentdiscovery/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-agentdiscovery/client'
  autoload :Errors, 'aws-sdk-agentdiscovery/errors'
  autoload :Resource, 'aws-sdk-agentdiscovery/resource'
  autoload :EndpointParameters, 'aws-sdk-agentdiscovery/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-agentdiscovery/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-agentdiscovery/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-agentdiscovery/customizations'
