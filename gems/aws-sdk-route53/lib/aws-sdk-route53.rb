# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53', Module.new) unless Aws.const_defined?('Route53')

# @title Amazon Route 53
# <p>Amazon Route 53 is a highly available and scalable Domain Name System (DNS) web
# 			service.</p>
#          <p>You can use Route 53 to:</p>
#          <ul>
#             <li>
#                <p>Register domain names.</p>
#                <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-domain-registration.html">How domain registration works</a>.</p>
#             </li>
#             <li>
#                <p>Route internet traffic to the resources for your domain</p>
#                <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html">How internet traffic is routed to your website or web application</a>.</p>
#             </li>
#             <li>
#                <p>Check the health of your resources.</p>
#                <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-health-checks.html">How Route 53 checks the health of your resources</a>.</p>
#             </li>
#          </ul>
module Aws::Route53
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53/types'
require_relative 'aws-sdk-route53/paginators'
require_relative 'aws-sdk-route53/schema'
require_relative 'aws-sdk-route53/auth_parameters'
require_relative 'aws-sdk-route53/auth_resolver'
require_relative 'aws-sdk-route53/client'
require_relative 'aws-sdk-route53/customizations'
require_relative 'aws-sdk-route53/errors'
require_relative 'aws-sdk-route53/endpoint_parameters'
require_relative 'aws-sdk-route53/endpoint_provider'
require_relative 'aws-sdk-route53/waiters'
