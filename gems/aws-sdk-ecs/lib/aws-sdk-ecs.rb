# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ECS', Module.new) unless Aws.const_defined?('ECS')

# @title Amazon EC2 Container Service
# <fullname>Amazon Elastic Container Service</fullname>
#          <p>Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast, container management service. It makes
# 			it easy to run, stop, and manage Docker containers. You can host your cluster on a
# 			serverless infrastructure that's managed by Amazon ECS by launching your services or tasks on
# 			Fargate. For more control, you can host your tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2)
# 			or External (on-premises) instances that you manage.</p>
#          <p>Amazon ECS makes it easy to launch and stop container-based applications with simple API
# 			calls. This makes it easy to get the state of your cluster from a centralized service,
# 			and gives you access to many familiar Amazon EC2 features.</p>
#          <p>You can use Amazon ECS to schedule the placement of containers across your cluster based on
# 			your resource needs, isolation policies, and availability requirements. With Amazon ECS, you
# 			don't need to operate your own cluster management and configuration management systems.
# 			You also don't need to worry about scaling your management infrastructure. </p>
module Aws::ECS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ecs/types'
require_relative 'aws-sdk-ecs/paginators'
require_relative 'aws-sdk-ecs/schema'
require_relative 'aws-sdk-ecs/auth_parameters'
require_relative 'aws-sdk-ecs/auth_resolver'
require_relative 'aws-sdk-ecs/client'
require_relative 'aws-sdk-ecs/customizations'
require_relative 'aws-sdk-ecs/errors'
require_relative 'aws-sdk-ecs/endpoint_parameters'
require_relative 'aws-sdk-ecs/endpoint_provider'
require_relative 'aws-sdk-ecs/waiters'
