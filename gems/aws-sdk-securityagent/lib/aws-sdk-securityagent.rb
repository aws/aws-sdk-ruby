# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SecurityAgent', Module.new) unless Aws.const_defined?('SecurityAgent')

# @title AWS Security Agent
# <p>AWS Security Agent is a frontier agent that proactively secures your applications throughout the development lifecycle. It conducts automated security reviews tailored to your organizational requirements and delivers context-aware penetration testing on demand. By continuously validating security from design to deployment, AWS Security Agent helps prevent vulnerabilities early across all your environments. Key capabilities include design security review for architecture documents, code security review for pull requests in connected repositories, and on-demand penetration testing that discovers, validates, and remediates security vulnerabilities through tailored multi-step attack scenarios. For more information, see the <a href="https://docs.aws.amazon.com/securityagent/latest/userguide/what-is.html">AWS Security Agent User Guide</a>.</p>
module Aws::SecurityAgent
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-securityagent/types'
require_relative 'aws-sdk-securityagent/paginators'
require_relative 'aws-sdk-securityagent/schema'
require_relative 'aws-sdk-securityagent/auth_parameters'
require_relative 'aws-sdk-securityagent/auth_resolver'
require_relative 'aws-sdk-securityagent/client'
require_relative 'aws-sdk-securityagent/errors'
require_relative 'aws-sdk-securityagent/endpoint_parameters'
require_relative 'aws-sdk-securityagent/endpoint_provider'
require_relative 'aws-sdk-securityagent/waiters'
require_relative 'aws-sdk-securityagent/customizations'
