# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SWF', Module.new) unless Aws.const_defined?('SWF')

# @title Amazon Simple Workflow Service
# <fullname>Amazon Simple Workflow Service</fullname>
#          <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to
#       coordinate work across distributed components. In Amazon SWF, a <i>task</i>
#       represents a logical unit of work that is performed by a component of your workflow.
#       Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and 
#       concurrency in accordance with the logical flow of the application.</p>
#          <p>Amazon SWF gives you full control over implementing tasks and coordinating them without
#       worrying about underlying complexities such as tracking their progress and maintaining their
#       state.</p>
#          <p>This documentation serves as reference only. For a broader overview of the Amazon SWF
#       programming model, see the <i>
#                <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon SWF Developer Guide</a>
#             </i>.</p>
module Aws::SWF
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-swf/types'
require_relative 'aws-sdk-swf/paginators'
require_relative 'aws-sdk-swf/schema'
require_relative 'aws-sdk-swf/auth_parameters'
require_relative 'aws-sdk-swf/auth_resolver'
require_relative 'aws-sdk-swf/client'
require_relative 'aws-sdk-swf/customizations'
require_relative 'aws-sdk-swf/errors'
require_relative 'aws-sdk-swf/endpoint_parameters'
require_relative 'aws-sdk-swf/endpoint_provider'
require_relative 'aws-sdk-swf/waiters'
