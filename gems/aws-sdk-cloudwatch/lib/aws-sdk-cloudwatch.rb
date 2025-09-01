# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudWatch', Module.new) unless Aws.const_defined?('CloudWatch')

# @title Amazon CloudWatch
# <p>Amazon CloudWatch monitors your Amazon Web Services (Amazon Web Services)
#             resources and the applications you run on Amazon Web Services in real time. You can use
#                 CloudWatch to collect and track metrics, which are the variables you want to
#             measure for your resources and applications.</p>
#          <p>CloudWatch alarms send notifications or automatically change the resources you are
#             monitoring based on rules that you define. For example, you can monitor the CPU usage
#             and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine
#             whether you should launch additional instances to handle increased load. You can also
#             use this data to stop under-used instances to save money.</p>
#          <p>In addition to monitoring the built-in metrics that come with Amazon Web Services,
#             you can monitor your own custom metrics. With CloudWatch, you gain system-wide
#             visibility into resource utilization, application performance, and operational
#             health.</p>
module Aws::CloudWatch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudwatch/types'
require_relative 'aws-sdk-cloudwatch/paginators'
require_relative 'aws-sdk-cloudwatch/schema'
require_relative 'aws-sdk-cloudwatch/auth_parameters'
require_relative 'aws-sdk-cloudwatch/auth_resolver'
require_relative 'aws-sdk-cloudwatch/client'
require_relative 'aws-sdk-cloudwatch/customizations'
require_relative 'aws-sdk-cloudwatch/errors'
require_relative 'aws-sdk-cloudwatch/endpoint_parameters'
require_relative 'aws-sdk-cloudwatch/endpoint_provider'
require_relative 'aws-sdk-cloudwatch/waiters'
