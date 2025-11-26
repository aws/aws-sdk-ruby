# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockAgentCoreControl', Module.new) unless Aws.const_defined?('BedrockAgentCoreControl')

# @title Amazon Bedrock Agent Core Control Plane Fronting Layer
# <note> <p> is in preview release and is subject to change.</p> </note> <p>Welcome to the Amazon Bedrock AgentCore Control plane API reference. Control plane actions configure, create, modify, and monitor Amazon Web Services resources.</p>
module Aws::BedrockAgentCoreControl
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockagentcorecontrol/types'
require_relative 'aws-sdk-bedrockagentcorecontrol/paginators'
require_relative 'aws-sdk-bedrockagentcorecontrol/schema'
require_relative 'aws-sdk-bedrockagentcorecontrol/auth_parameters'
require_relative 'aws-sdk-bedrockagentcorecontrol/auth_resolver'
require_relative 'aws-sdk-bedrockagentcorecontrol/client'
require_relative 'aws-sdk-bedrockagentcorecontrol/errors'
require_relative 'aws-sdk-bedrockagentcorecontrol/endpoint_parameters'
require_relative 'aws-sdk-bedrockagentcorecontrol/endpoint_provider'
require_relative 'aws-sdk-bedrockagentcorecontrol/waiters'
require_relative 'aws-sdk-bedrockagentcorecontrol/customizations'
