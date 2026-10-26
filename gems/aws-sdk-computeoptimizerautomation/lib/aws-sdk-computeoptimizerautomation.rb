# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ComputeOptimizerAutomation', Module.new) unless Aws.const_defined?('ComputeOptimizerAutomation')

# @title Compute Optimizer Automation
# <p> Automation is a feature within Amazon Web Services Compute Optimizer that enables you to apply optimization recommendations to your Amazon Web Services resources, reducing costs and improving performance. You can apply recommended actions directly or create automation rules that implement recommendations on a recurring schedule when they match your specified criteria. With automation rules, set criteria such as Amazon Web Services Region and Resource Tags to target specific geographies and workloads. Configure rules to run daily, weekly, or monthly, and Compute Optimizer continuously evaluates new recommendations against your criteria. Track automation events over time, examine detailed step history, estimate savings achieved, and reverse actions directly from Compute Optimizer when needed. </p>
module Aws::ComputeOptimizerAutomation
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-computeoptimizerautomation/types'
require_relative 'aws-sdk-computeoptimizerautomation/paginators'
require_relative 'aws-sdk-computeoptimizerautomation/schema'
require_relative 'aws-sdk-computeoptimizerautomation/auth_parameters'
require_relative 'aws-sdk-computeoptimizerautomation/auth_resolver'
require_relative 'aws-sdk-computeoptimizerautomation/client'
require_relative 'aws-sdk-computeoptimizerautomation/errors'
require_relative 'aws-sdk-computeoptimizerautomation/endpoint_parameters'
require_relative 'aws-sdk-computeoptimizerautomation/endpoint_provider'
require_relative 'aws-sdk-computeoptimizerautomation/waiters'
require_relative 'aws-sdk-computeoptimizerautomation/customizations'
