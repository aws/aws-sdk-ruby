# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NovaAct', Module.new) unless Aws.const_defined?('NovaAct')

# @title Nova Act Service
# <p>The Nova Act service provides a REST API for managing AI-powered workflow automation. It enables users to create workflow definitions, execute workflow runs, manage sessions, and orchestrate acts (individual AI tasks) with tool integrations.</p>
module Aws::NovaAct
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-novaact/types'
require_relative 'aws-sdk-novaact/paginators'
require_relative 'aws-sdk-novaact/schema'
require_relative 'aws-sdk-novaact/auth_parameters'
require_relative 'aws-sdk-novaact/auth_resolver'
require_relative 'aws-sdk-novaact/client'
require_relative 'aws-sdk-novaact/errors'
require_relative 'aws-sdk-novaact/endpoint_parameters'
require_relative 'aws-sdk-novaact/endpoint_provider'
require_relative 'aws-sdk-novaact/waiters'
require_relative 'aws-sdk-novaact/customizations'
