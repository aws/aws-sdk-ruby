# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MPA', Module.new) unless Aws.const_defined?('MPA')

# @title AWS Multi-party Approval
# <p>Multi-party approval is a capability of <a href="http://aws.amazon.com/organizations">Organizations</a> that allows you to protect a predefined list of operations through a distributed approval process. Use Multi-party approval to establish approval workflows and transform security processes into team-based decisions.</p> <p> <b>When to use Multi-party approval</b>:</p> <ul> <li> <p>You need to align with the Zero Trust principle of "never trust, always verify"</p> </li> <li> <p>You need to make sure that the right humans have access to the right things in the right way</p> </li> <li> <p>You need distributed decision-making for sensitive or critical operations</p> </li> <li> <p>You need to protect against unintended operations on sensitive or critical resources</p> </li> <li> <p>You need formal reviews and approvals for auditing or compliance reasons</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/what-is.html">What is Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
module Aws::MPA
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mpa/types'
require_relative 'aws-sdk-mpa/paginators'
require_relative 'aws-sdk-mpa/schema'
require_relative 'aws-sdk-mpa/auth_parameters'
require_relative 'aws-sdk-mpa/auth_resolver'
require_relative 'aws-sdk-mpa/client'
require_relative 'aws-sdk-mpa/customizations'
require_relative 'aws-sdk-mpa/errors'
require_relative 'aws-sdk-mpa/endpoint_parameters'
require_relative 'aws-sdk-mpa/endpoint_provider'
require_relative 'aws-sdk-mpa/waiters'
