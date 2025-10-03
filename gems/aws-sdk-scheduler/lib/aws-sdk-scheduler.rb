# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Scheduler', Module.new) unless Aws.const_defined?('Scheduler')

# @title Amazon EventBridge Scheduler
# <p>
#        Amazon EventBridge Scheduler is a serverless scheduler that allows you to create, run, and manage tasks from one central, managed service.
#        EventBridge Scheduler delivers your tasks reliably, with built-in mechanisms that adjust your schedules based on the availability of downstream targets.
#        The following reference lists the available API actions, and data types for EventBridge Scheduler.
#      </p>
module Aws::Scheduler
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-scheduler/types'
require_relative 'aws-sdk-scheduler/paginators'
require_relative 'aws-sdk-scheduler/schema'
require_relative 'aws-sdk-scheduler/auth_parameters'
require_relative 'aws-sdk-scheduler/auth_resolver'
require_relative 'aws-sdk-scheduler/client'
require_relative 'aws-sdk-scheduler/customizations'
require_relative 'aws-sdk-scheduler/errors'
require_relative 'aws-sdk-scheduler/endpoint_parameters'
require_relative 'aws-sdk-scheduler/endpoint_provider'
require_relative 'aws-sdk-scheduler/waiters'
