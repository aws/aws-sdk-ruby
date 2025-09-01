# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkspacesInstances', Module.new) unless Aws.const_defined?('WorkspacesInstances')

# @title Amazon Workspaces Instances
# <p>Amazon WorkSpaces Instances provides an API framework for managing virtual workspace environments across multiple AWS regions, enabling programmatic creation and configuration of desktop infrastructure.</p>
module Aws::WorkspacesInstances
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workspacesinstances/types'
require_relative 'aws-sdk-workspacesinstances/paginators'
require_relative 'aws-sdk-workspacesinstances/schema'
require_relative 'aws-sdk-workspacesinstances/auth_parameters'
require_relative 'aws-sdk-workspacesinstances/auth_resolver'
require_relative 'aws-sdk-workspacesinstances/client'
require_relative 'aws-sdk-workspacesinstances/customizations'
require_relative 'aws-sdk-workspacesinstances/errors'
require_relative 'aws-sdk-workspacesinstances/endpoint_parameters'
require_relative 'aws-sdk-workspacesinstances/endpoint_provider'
require_relative 'aws-sdk-workspacesinstances/waiters'
