# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElasticLoadBalancing', Module.new) unless Aws.const_defined?('ElasticLoadBalancing')

# @title Elastic Load Balancing
# <fullname>Elastic Load Balancing</fullname>
#         
#         <p>A load balancer can distribute incoming traffic across your EC2 instances.
#             This enables you to increase the availability of your application. The load balancer
#             also monitors the health of its registered instances and ensures that it routes traffic
#             only to healthy instances. You configure your load balancer to accept incoming traffic
#             by specifying one or more listeners, which are configured with a protocol and port 
#             number for connections from clients to the load balancer and a protocol and port number
#             for connections from the load balancer to the instances.</p> 
#         <p>Elastic Load Balancing supports three types of load balancers: Application Load Balancers, Network Load Balancers, 
#             and Classic Load Balancers. You can select a load balancer based on your application needs. For more 
#             information, see the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p>
#         <p>This reference covers the 2012-06-01 API, which supports Classic Load Balancers. 
#             The 2015-12-01 API supports Application Load Balancers and Network Load Balancers.</p>
#         
#         <p>To get started, create a load balancer with one or more listeners using <a>CreateLoadBalancer</a>. 
#             Register your instances with the load balancer using <a>RegisterInstancesWithLoadBalancer</a>.</p>
# 
#         <p>All Elastic Load Balancing operations are <i>idempotent</i>, which means 
#             that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK 
#             response code.</p>
module Aws::ElasticLoadBalancing
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elasticloadbalancing/types'
require_relative 'aws-sdk-elasticloadbalancing/paginators'
require_relative 'aws-sdk-elasticloadbalancing/schema'
require_relative 'aws-sdk-elasticloadbalancing/auth_parameters'
require_relative 'aws-sdk-elasticloadbalancing/auth_resolver'
require_relative 'aws-sdk-elasticloadbalancing/client'
require_relative 'aws-sdk-elasticloadbalancing/customizations'
require_relative 'aws-sdk-elasticloadbalancing/errors'
require_relative 'aws-sdk-elasticloadbalancing/endpoint_parameters'
require_relative 'aws-sdk-elasticloadbalancing/endpoint_provider'
require_relative 'aws-sdk-elasticloadbalancing/waiters'
