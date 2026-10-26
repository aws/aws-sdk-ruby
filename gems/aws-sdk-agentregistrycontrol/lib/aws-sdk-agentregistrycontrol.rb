# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AgentRegistryControl', Module.new) unless Aws.const_defined?('AgentRegistryControl')

# @title Agent Registry Control
# <p>Amazon Web Services Agent Registry is a managed catalog for publishing and discovering resources such as MCP servers, agents, and agent skills. Agent Registry Control is its control-plane API: use it to create and manage registries and the records they contain, configure discovery and authorization, govern record approval and curation workflows, and manage automatic detection of resources. Data-plane search and MCP invocation operations are provided by the companion Agent Registry API.</p>
module Aws::AgentRegistryControl
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-agentregistrycontrol/types'
require_relative 'aws-sdk-agentregistrycontrol/paginators'
require_relative 'aws-sdk-agentregistrycontrol/schema'
require_relative 'aws-sdk-agentregistrycontrol/auth_parameters'
require_relative 'aws-sdk-agentregistrycontrol/auth_resolver'
require_relative 'aws-sdk-agentregistrycontrol/client'
require_relative 'aws-sdk-agentregistrycontrol/errors'
require_relative 'aws-sdk-agentregistrycontrol/endpoint_parameters'
require_relative 'aws-sdk-agentregistrycontrol/endpoint_provider'
require_relative 'aws-sdk-agentregistrycontrol/waiters'
require_relative 'aws-sdk-agentregistrycontrol/customizations'
