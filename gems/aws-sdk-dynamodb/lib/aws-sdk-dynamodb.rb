# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DynamoDB', Module.new) unless Aws.const_defined?('DynamoDB')

# @title Amazon DynamoDB
# <fullname>Amazon DynamoDB</fullname>
#          <p>Amazon DynamoDB is a fully managed NoSQL database service that provides fast
#             and predictable performance with seamless scalability. DynamoDB lets you
#             offload the administrative burdens of operating and scaling a distributed database, so
#             that you don't have to worry about hardware provisioning, setup and configuration,
#             replication, software patching, or cluster scaling.</p>
#          <p>With DynamoDB, you can create database tables that can store and retrieve
#             any amount of data, and serve any level of request traffic. You can scale up or scale
#             down your tables' throughput capacity without downtime or performance degradation, and
#             use the Amazon Web Services Management Console to monitor resource utilization and performance
#             metrics.</p>
#          <p>DynamoDB automatically spreads the data and traffic for your tables over
#             a sufficient number of servers to handle your throughput and storage requirements, while
#             maintaining consistent and fast performance. All of your data is stored on solid state
#             disks (SSDs) and automatically replicated across multiple Availability Zones in an
#                 Amazon Web Services Region, providing built-in high availability and data
#             durability.</p>
module Aws::DynamoDB
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dynamodb/types'
require_relative 'aws-sdk-dynamodb/paginators'
require_relative 'aws-sdk-dynamodb/schema'
require_relative 'aws-sdk-dynamodb/auth_parameters'
require_relative 'aws-sdk-dynamodb/auth_resolver'
require_relative 'aws-sdk-dynamodb/client'
require_relative 'aws-sdk-dynamodb/customizations'
require_relative 'aws-sdk-dynamodb/errors'
require_relative 'aws-sdk-dynamodb/endpoint_parameters'
require_relative 'aws-sdk-dynamodb/endpoint_provider'
require_relative 'aws-sdk-dynamodb/waiters'
