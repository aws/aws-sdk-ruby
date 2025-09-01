# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EventBridge', Module.new) unless Aws.const_defined?('EventBridge')

# @title Amazon EventBridge
# <p>Amazon EventBridge helps you to respond to state changes in your Amazon Web Services
#       resources. When your resources change state, they automatically send events to an event
#       stream. You can create rules that match selected events in the stream and route them to
#       targets to take action. You can also use rules to take action on a predetermined schedule. For
#       example, you can configure rules to:</p>
#          <ul>
#             <li>
#                <p>Automatically invoke an Lambda function to update DNS entries when an
#           event notifies you that Amazon EC2 instance enters the running state.</p>
#             </li>
#             <li>
#                <p>Direct specific API records from CloudTrail to an Amazon Kinesis
#           data stream for detailed analysis of potential security or availability risks.</p>
#             </li>
#             <li>
#                <p>Periodically invoke a built-in target to create a snapshot of an Amazon EBS
#           volume.</p>
#             </li>
#          </ul>
#          <p>For more information about the features of Amazon EventBridge, see the <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide">Amazon EventBridge User
#         Guide</a>.</p>
module Aws::EventBridge
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-eventbridge/types'
require_relative 'aws-sdk-eventbridge/paginators'
require_relative 'aws-sdk-eventbridge/schema'
require_relative 'aws-sdk-eventbridge/auth_parameters'
require_relative 'aws-sdk-eventbridge/auth_resolver'
require_relative 'aws-sdk-eventbridge/client'
require_relative 'aws-sdk-eventbridge/customizations'
require_relative 'aws-sdk-eventbridge/errors'
require_relative 'aws-sdk-eventbridge/endpoint_parameters'
require_relative 'aws-sdk-eventbridge/endpoint_provider'
require_relative 'aws-sdk-eventbridge/waiters'
