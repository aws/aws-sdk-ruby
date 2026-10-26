# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RTBFabric', Module.new) unless Aws.const_defined?('RTBFabric')

# @title RTBFabric
# <p>Amazon Web Services RTB Fabric provides secure, low-latency infrastructure for connecting real-time bidding (RTB) applications. Rather than hosting applications directly, RTB Fabric acts as the connecting fabric that enables your applications to communicate efficiently over private networks instead of the public internet. You maintain complete control over your applications, data, and bidding decisions, while RTB Fabric provides the underlying infrastructure for secure, reliable connectivity.</p> <p>You can use these APIs to complete RTB Fabric tasks, such as setting up audit log ingestions or viewing user access. For more information about RTB Fabric, including the required permissions to use the service, see the <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/">Amazon Web Services RTB Fabric User Guide</a>.</p>
module Aws::RTBFabric
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-rtbfabric/types'
require_relative 'aws-sdk-rtbfabric/paginators'
require_relative 'aws-sdk-rtbfabric/schema'
require_relative 'aws-sdk-rtbfabric/auth_parameters'
require_relative 'aws-sdk-rtbfabric/auth_resolver'
require_relative 'aws-sdk-rtbfabric/client'
require_relative 'aws-sdk-rtbfabric/errors'
require_relative 'aws-sdk-rtbfabric/endpoint_parameters'
require_relative 'aws-sdk-rtbfabric/endpoint_provider'
require_relative 'aws-sdk-rtbfabric/waiters'
require_relative 'aws-sdk-rtbfabric/customizations'
