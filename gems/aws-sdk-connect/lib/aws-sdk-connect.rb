# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Connect', Module.new) unless Aws.const_defined?('Connect')

# @title Amazon Connect Service
# <note>
#             <p>Amazon Connect now refers to a portfolio of agentic solutions for business functions. The
#     legacy product is now called Amazon Connect Customer, or simply Customer. The legacy name
#     is used interchangeably in this documentation.</p>
#          </note>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html">Connect Customer Customer actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Service.html">Connect Customer Customer data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>Connect Customer Customer engages customers at every touchpoint and creates deeper
#    relationships with AI powered capabilities.</p>
#          <p>Build and manage customer communication experiences. Connect customers to agents, enable
#    intelligent routing, and track performance in real-time.</p>
#          <p>There are limits to the number of Connect Customer resources that you can create. There are also limits to the
#    number of requests that you can make per second. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Connect Customer Service Quotas</a> in the
#      <i>Connect Customer Administrator Guide</i>.</p>
#          <p>You can use an endpoint to connect programmatically to an Amazon Web Services service. For a list of Connect Customer endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/connect_region.html">Connect Customer
#     Endpoints</a>.</p>
module Aws::Connect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connect/types'
require_relative 'aws-sdk-connect/paginators'
require_relative 'aws-sdk-connect/schema'
require_relative 'aws-sdk-connect/auth_parameters'
require_relative 'aws-sdk-connect/auth_resolver'
require_relative 'aws-sdk-connect/client'
require_relative 'aws-sdk-connect/errors'
require_relative 'aws-sdk-connect/endpoint_parameters'
require_relative 'aws-sdk-connect/endpoint_provider'
require_relative 'aws-sdk-connect/waiters'
require_relative 'aws-sdk-connect/customizations'
