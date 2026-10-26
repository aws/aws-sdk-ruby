# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElasticLoadBalancingV2', Module.new) unless Aws.const_defined?('ElasticLoadBalancingV2')

# @title Elastic Load Balancing
# <fullname>Elastic Load Balancing</fullname>
#          <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances.
#       This enables you to increase the availability of your application. The load balancer also
#       monitors the health of its registered targets and ensures that it routes traffic only to
#       healthy targets. You configure your load balancer to accept incoming traffic by specifying one
#       or more listeners, which are configured with a protocol and port number for connections from
#       clients to the load balancer. You configure a target group with a protocol and port number for
#       connections from the load balancer to the targets, and with health check settings to be used
#       when checking the health status of the targets.</p>
#          <p>Elastic Load Balancing supports the following types of load balancers: Application Load
#       Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load Balancers. This
#       reference covers the following load balancer types:</p>
#          <ul>
#             <li>
#                <p>Application Load Balancer - Operates at the application layer (layer 7) and supports
#           HTTP and HTTPS.</p>
#             </li>
#             <li>
#                <p>Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP,
#           TLS, UDP, and QUIC.</p>
#             </li>
#             <li>
#                <p>Gateway Load Balancer - Operates at the network layer (layer 3).</p>
#             </li>
#          </ul>
#          <p>For more information, see the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User
#       Guide</a>.</p>
#          <p>All Elastic Load Balancing operations are idempotent, which means that they complete at
#       most one time. If you repeat an operation, it succeeds.</p>
module Aws::ElasticLoadBalancingV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elasticloadbalancingv2/types'
require_relative 'aws-sdk-elasticloadbalancingv2/paginators'
require_relative 'aws-sdk-elasticloadbalancingv2/schema'
require_relative 'aws-sdk-elasticloadbalancingv2/auth_parameters'
require_relative 'aws-sdk-elasticloadbalancingv2/auth_resolver'
require_relative 'aws-sdk-elasticloadbalancingv2/client'
require_relative 'aws-sdk-elasticloadbalancingv2/errors'
require_relative 'aws-sdk-elasticloadbalancingv2/endpoint_parameters'
require_relative 'aws-sdk-elasticloadbalancingv2/endpoint_provider'
require_relative 'aws-sdk-elasticloadbalancingv2/waiters'
require_relative 'aws-sdk-elasticloadbalancingv2/customizations'
