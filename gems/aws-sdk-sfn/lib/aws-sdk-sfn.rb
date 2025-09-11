# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SFN', Module.new) unless Aws.const_defined?('SFN')

# @title AWS Step Functions
# <fullname>Step Functions</fullname>
#          <p>With Step Functions, you can create workflows, also called <i>state machines</i>, to build distributed applications, automate processes, orchestrate microservices, and create data and machine learning pipelines.</p>
#          <p>Through the Step Functions API, you can create, list, update, and delete state machines, activities, and other data types. You can start, stop, and redrive your state machines. Your activity workers can send task success, heartbeat, and failure responses.</p>
#          <p>With API calls, you can also manage other aspects of your workflow, such as tags, versions, and aliases.</p>
#          <p>For more information about developing solutions with Step Functions, see the <i>
#                <a href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">Step Functions Developer Guide</a>
#             </i>.</p>
#          <important>
#             <p>If you use the Step Functions API actions using Amazon Web Services SDK integrations, make sure the API actions are in camel case and parameter names are in Pascal case. For example, you might use Step Functions API action <code>startSyncExecution</code> and specify its parameter as <code>StateMachineArn</code>.</p>
#          </important>
module Aws::SFN
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sfn/types'
require_relative 'aws-sdk-sfn/paginators'
require_relative 'aws-sdk-sfn/schema'
require_relative 'aws-sdk-sfn/auth_parameters'
require_relative 'aws-sdk-sfn/auth_resolver'
require_relative 'aws-sdk-sfn/client'
require_relative 'aws-sdk-sfn/customizations'
require_relative 'aws-sdk-sfn/errors'
require_relative 'aws-sdk-sfn/endpoint_parameters'
require_relative 'aws-sdk-sfn/endpoint_provider'
require_relative 'aws-sdk-sfn/waiters'
