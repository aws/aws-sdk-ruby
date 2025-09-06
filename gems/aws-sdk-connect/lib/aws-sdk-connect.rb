# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Connect', Module.new) unless Aws.const_defined?('Connect')

# @title Amazon Connect Service
# <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html">Amazon Connect actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Service.html">Amazon Connect
#       data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>Amazon Connect is a cloud-based contact center solution that you use to set up and
#    manage a customer contact center and provide reliable customer engagement at any scale.</p>
#          <p>Amazon Connect provides metrics and real-time reporting that enable you to optimize
#    contact routing. You can also resolve customer issues more efficiently by getting customers in
#    touch with the appropriate agents.</p>
#          <p>There are limits to the number of Amazon Connect resources that you can create. There
#    are also limits to the number of requests that you can make per second. For more information, see
#     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect Service Quotas</a> in the <i>Amazon Connect Administrator
#     Guide</i>.</p>
#          <p>You can use an endpoint to connect programmatically to an Amazon Web Services service. For a
#    list of Amazon Connect endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/connect_region.html">Amazon Connect Endpoints</a>.</p>
module Aws::Connect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connect/types'
require_relative 'aws-sdk-connect/paginators'
require_relative 'aws-sdk-connect/schema'
require_relative 'aws-sdk-connect/auth_parameters'
require_relative 'aws-sdk-connect/auth_resolver'
require_relative 'aws-sdk-connect/client'
require_relative 'aws-sdk-connect/customizations'
require_relative 'aws-sdk-connect/errors'
require_relative 'aws-sdk-connect/endpoint_parameters'
require_relative 'aws-sdk-connect/endpoint_provider'
require_relative 'aws-sdk-connect/waiters'
