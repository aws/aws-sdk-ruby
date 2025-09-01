# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Evidently', Module.new) unless Aws.const_defined?('Evidently')

# @title Amazon CloudWatch Evidently
# <p>You can use Amazon CloudWatch Evidently to safely validate new features by serving 
#       them to a specified percentage
#       of your users while you roll out the feature. You can monitor the performance of the new feature
#       to help you decide when to ramp up traffic to your users. This helps you 
#       reduce risk and identify unintended consequences before you fully launch the feature.</p>
#          <p>You can also conduct A/B experiments to make feature design decisions based on evidence
#       and data. An experiment can test as many as five variations at once. Evidently collects
#       experiment data and analyzes it using statistical methods. It also provides clear
#       recommendations about which variations perform better. You can test both user-facing features
#       and backend features.</p>
module Aws::Evidently
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-evidently/types'
require_relative 'aws-sdk-evidently/paginators'
require_relative 'aws-sdk-evidently/schema'
require_relative 'aws-sdk-evidently/auth_parameters'
require_relative 'aws-sdk-evidently/auth_resolver'
require_relative 'aws-sdk-evidently/client'
require_relative 'aws-sdk-evidently/customizations'
require_relative 'aws-sdk-evidently/errors'
require_relative 'aws-sdk-evidently/endpoint_parameters'
require_relative 'aws-sdk-evidently/endpoint_provider'
require_relative 'aws-sdk-evidently/waiters'
