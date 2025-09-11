# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ComputeOptimizer', Module.new) unless Aws.const_defined?('ComputeOptimizer')

# @title AWS Compute Optimizer
# <p>Compute Optimizer is a service that analyzes the configuration and utilization
#             metrics of your Amazon Web Services compute resources, such as Amazon EC2
#             instances, Amazon EC2 Auto Scaling groups, Lambda functions, Amazon EBS volumes, and Amazon ECS services on Fargate. 
#             It reports whether your resources are optimal, and generates
#             optimization recommendations to reduce the cost and improve the performance of your
#             workloads. Compute Optimizer also provides recent utilization metric data, in addition
#             to projected utilization metric data for the recommendations, which you can use to
#             evaluate which recommendation provides the best price-performance trade-off. The
#             analysis of your usage patterns can help you decide when to move or resize your running
#             resources, and still meet your performance and capacity requirements. For more
#             information about Compute Optimizer, including the required permissions to use the
#             service, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/">Compute Optimizer User Guide</a>.</p>
module Aws::ComputeOptimizer
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-computeoptimizer/types'
require_relative 'aws-sdk-computeoptimizer/paginators'
require_relative 'aws-sdk-computeoptimizer/schema'
require_relative 'aws-sdk-computeoptimizer/auth_parameters'
require_relative 'aws-sdk-computeoptimizer/auth_resolver'
require_relative 'aws-sdk-computeoptimizer/client'
require_relative 'aws-sdk-computeoptimizer/customizations'
require_relative 'aws-sdk-computeoptimizer/errors'
require_relative 'aws-sdk-computeoptimizer/endpoint_parameters'
require_relative 'aws-sdk-computeoptimizer/endpoint_provider'
require_relative 'aws-sdk-computeoptimizer/waiters'
