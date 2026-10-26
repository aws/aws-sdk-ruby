# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AgentRegistry', Module.new) unless Aws.const_defined?('AgentRegistry')

# @title Agent Registry
# Agent Registry lets callers discover, list, and retrieve approved records published to a registry.
module Aws::AgentRegistry
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-agentregistry/types'
require_relative 'aws-sdk-agentregistry/paginators'
require_relative 'aws-sdk-agentregistry/schema'
require_relative 'aws-sdk-agentregistry/auth_parameters'
require_relative 'aws-sdk-agentregistry/auth_resolver'
require_relative 'aws-sdk-agentregistry/client'
require_relative 'aws-sdk-agentregistry/errors'
require_relative 'aws-sdk-agentregistry/endpoint_parameters'
require_relative 'aws-sdk-agentregistry/endpoint_provider'
require_relative 'aws-sdk-agentregistry/waiters'
require_relative 'aws-sdk-agentregistry/customizations'
