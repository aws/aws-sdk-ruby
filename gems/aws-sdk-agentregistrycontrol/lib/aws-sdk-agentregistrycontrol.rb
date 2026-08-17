# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:agentregistrycontrol)

# This module provides support for Agent Registry Control. This module is available in the
# `aws-sdk-agentregistrycontrol` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     agent_registry_control = Aws::AgentRegistryControl::Client.new
#     resp = agent_registry_control.create_registry(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Agent Registry Control are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AgentRegistryControl::Errors::ServiceError
#       # rescues all Agent Registry Control API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AgentRegistryControl
  autoload :Types, 'aws-sdk-agentregistrycontrol/types'
  autoload :ClientApi, 'aws-sdk-agentregistrycontrol/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-agentregistrycontrol/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-agentregistrycontrol/client'
  autoload :Errors, 'aws-sdk-agentregistrycontrol/errors'
  autoload :Waiters, 'aws-sdk-agentregistrycontrol/waiters'
  autoload :Resource, 'aws-sdk-agentregistrycontrol/resource'
  autoload :EndpointParameters, 'aws-sdk-agentregistrycontrol/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-agentregistrycontrol/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-agentregistrycontrol/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-agentregistrycontrol/customizations'
