# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53Resolver', Module.new) unless Aws.const_defined?('Route53Resolver')

# @title Amazon Route 53 Resolver
# <p>When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC
# 			from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names
# 			such as domain names for EC2 instances or Elastic Load Balancing load balancers.
# 			Resolver performs recursive lookups against public name servers for all other domain
# 			names.</p>
#          <p>You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:</p>
#          <p>
#             <b>Forward DNS queries from resolvers on your network to Route 53 Resolver</b>
#          </p>
#          <p>DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers 
# 			to easily resolve domain names for Amazon Web Services resources such as EC2 instances or records in a Route 53 private hosted zone. 
# 			For more information, see 
# 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc">How DNS Resolvers 
# 			on Your Network Forward DNS Queries to Route 53 Resolver</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
#          <p>
#             <b>Conditionally forward queries from a VPC to resolvers on your network</b>
#          </p>
#          <p>You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network. 
# 			To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward 
# 			(such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to. 
# 			If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match 
# 			(acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see 
# 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network">How Route 53 Resolver 
# 			Forwards DNS Queries from Your VPCs to Your Network</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
#          <p>Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs, you can choose
# 			whether to forward queries from your VPCs to your network (outbound queries), from your
# 			network to your VPCs (inbound queries), or both.</p>
module Aws::Route53Resolver
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53resolver/types'
require_relative 'aws-sdk-route53resolver/paginators'
require_relative 'aws-sdk-route53resolver/schema'
require_relative 'aws-sdk-route53resolver/auth_parameters'
require_relative 'aws-sdk-route53resolver/auth_resolver'
require_relative 'aws-sdk-route53resolver/client'
require_relative 'aws-sdk-route53resolver/customizations'
require_relative 'aws-sdk-route53resolver/errors'
require_relative 'aws-sdk-route53resolver/endpoint_parameters'
require_relative 'aws-sdk-route53resolver/endpoint_provider'
require_relative 'aws-sdk-route53resolver/waiters'
