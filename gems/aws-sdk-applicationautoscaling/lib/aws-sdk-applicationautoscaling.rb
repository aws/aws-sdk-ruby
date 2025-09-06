# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApplicationAutoScaling', Module.new) unless Aws.const_defined?('ApplicationAutoScaling')

# @title Application Auto Scaling
# <p>With Application Auto Scaling, you can configure automatic scaling for the following
#       resources:</p>
#          <ul>
#             <li>
#                <p>Amazon AppStream 2.0 fleets</p>
#             </li>
#             <li>
#                <p>Amazon Aurora Replicas</p>
#             </li>
#             <li>
#                <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
#             </li>
#             <li>
#                <p>Amazon DynamoDB tables and global secondary indexes throughput capacity</p>
#             </li>
#             <li>
#                <p>Amazon ECS services</p>
#             </li>
#             <li>
#                <p>Amazon ElastiCache replication groups (Redis OSS and Valkey) and Memcached clusters</p>
#             </li>
#             <li>
#                <p>Amazon EMR clusters</p>
#             </li>
#             <li>
#                <p>Amazon Keyspaces (for Apache Cassandra) tables</p>
#             </li>
#             <li>
#                <p>Lambda function provisioned concurrency</p>
#             </li>
#             <li>
#                <p>Amazon Managed Streaming for Apache Kafka broker storage</p>
#             </li>
#             <li>
#                <p>Amazon Neptune clusters</p>
#             </li>
#             <li>
#                <p>Amazon SageMaker endpoint variants</p>
#             </li>
#             <li>
#                <p>Amazon SageMaker inference components</p>
#             </li>
#             <li>
#                <p>Amazon SageMaker serverless endpoint provisioned concurrency</p>
#             </li>
#             <li>
#                <p>Spot Fleets (Amazon EC2)</p>
#             </li>
#             <li>
#                <p>Pool of WorkSpaces</p>
#             </li>
#             <li>
#                <p>Custom resources provided by your own applications or services</p>
#             </li>
#          </ul>
#          <p>To learn more about Application Auto Scaling, see the <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application Auto Scaling User
#         Guide</a>.</p>
#          <p>
#             <b>API Summary</b>
#          </p>
#          <p>The Application Auto Scaling service API includes three key sets of actions: </p>
#          <ul>
#             <li>
#                <p>Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable
#           targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and
#           retrieve information on existing scalable targets.</p>
#             </li>
#             <li>
#                <p>Configure and manage automatic scaling - Define scaling policies to dynamically scale
#           your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions,
#           and retrieve your recent scaling activity history.</p>
#             </li>
#             <li>
#                <p>Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by
#           calling the <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html">RegisterScalableTarget</a> API action for any Application Auto Scaling scalable target. You can
#           suspend and resume (individually or in combination) scale-out activities that are
#           triggered by a scaling policy, scale-in activities that are triggered by a scaling policy,
#           and scheduled scaling.</p>
#             </li>
#          </ul>
module Aws::ApplicationAutoScaling
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-applicationautoscaling/types'
require_relative 'aws-sdk-applicationautoscaling/paginators'
require_relative 'aws-sdk-applicationautoscaling/schema'
require_relative 'aws-sdk-applicationautoscaling/auth_parameters'
require_relative 'aws-sdk-applicationautoscaling/auth_resolver'
require_relative 'aws-sdk-applicationautoscaling/client'
require_relative 'aws-sdk-applicationautoscaling/customizations'
require_relative 'aws-sdk-applicationautoscaling/errors'
require_relative 'aws-sdk-applicationautoscaling/endpoint_parameters'
require_relative 'aws-sdk-applicationautoscaling/endpoint_provider'
require_relative 'aws-sdk-applicationautoscaling/waiters'
