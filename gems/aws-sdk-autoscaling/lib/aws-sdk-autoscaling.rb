# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AutoScaling', Module.new) unless Aws.const_defined?('AutoScaling')

# @title Auto Scaling
# <fullname>Amazon EC2 Auto Scaling</fullname>
#          <p>The <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html">DescribeAutoScalingGroups</a> API operation might be throttled when retrieving details for an Auto Scaling group that contains many instances. By default, this operation returns details for all instances in the group. 
#             To help prevent throttling, you can set the <code>IncludeInstances</code> parameter to <code>false</code> to exclude instance details from the response.</p>
#          <p>Amazon EC2 Auto Scaling is designed to automatically launch and terminate EC2 instances
#             based on user-defined scaling policies, scheduled actions, and health checks.</p>
#          <p>For more information, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html">Amazon EC2 Auto Scaling User Guide</a> and the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html">Amazon EC2 Auto Scaling API Reference</a>.</p>
module Aws::AutoScaling
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-autoscaling/types'
require_relative 'aws-sdk-autoscaling/paginators'
require_relative 'aws-sdk-autoscaling/schema'
require_relative 'aws-sdk-autoscaling/auth_parameters'
require_relative 'aws-sdk-autoscaling/auth_resolver'
require_relative 'aws-sdk-autoscaling/client'
require_relative 'aws-sdk-autoscaling/customizations'
require_relative 'aws-sdk-autoscaling/errors'
require_relative 'aws-sdk-autoscaling/endpoint_parameters'
require_relative 'aws-sdk-autoscaling/endpoint_provider'
require_relative 'aws-sdk-autoscaling/waiters'
