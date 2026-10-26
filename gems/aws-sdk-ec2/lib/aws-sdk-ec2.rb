# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EC2', Module.new) unless Aws.const_defined?('EC2')

# @title Amazon Elastic Compute Cloud
# <fullname>Amazon Elastic Compute Cloud</fullname>
#          <p>This is the <i>Amazon EC2 API Reference</i>. It provides descriptions, API request
#             parameters, and the XML response for each of the Amazon EC2 Query API actions. Note that the
#             Amazon EC2 API includes actions for Amazon EC2 plus additional services, such as Amazon EBS and Amazon VPC.</p>
#          <p class="title">
#             <b>Learn more</b>
#          </p>
#          <ul>
#             <li>
#                <p>To learn about using the Query API, see
#                 <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-low-level-api.html">Using the API for Amazon EC2</a>.</p>
#             </li>
#             <li>
#                <p>To learn about the permissions required to call an Amazon EC2 API action, see
#                 <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html">Actions, resources, and condition keys for Amazon EC2</a>.</p>
#             </li>
#             <li>
#                <p>To get the list of API actions by service and resource, see
#                 <a href="https://docs.aws.amazon.com/ec2/latest/devguide/OperationList-query.html">Actions by service</a>.</p>
#             </li>
#             <li>
#                <p>To get the alphabetical list of API actions, see
#                 .</p>
#             </li>
#             <li>
#                <p>To get descriptions of the API error codes, see
#                 <a href="https://docs.aws.amazon.com/ec2/latest/devguide/errors-overview.html">Error codes for the Amazon EC2 API</a>.</p>
#             </li>
#          </ul>
#          <p>Alternatively, use one of the following methods to access the Amazon EC2 API, instead of using
#             the Query API directly:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/cli/latest/reference/ec2/">Amazon Web Services CLI Command Reference - ec2 commands</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/AWS_EC2.html">CloudFormation - Amazon EC2 resource type reference</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/powershell/v5/reference/items/EC2_cmdlets.html">Amazon Web Services Tools for PowerShell Cmdlet Reference - Amazon EC2 cmdlets</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://builder.aws.com/build/tools">Amazon Web Services SDKs</a>
#                </p>
#             </li>
#          </ul>
module Aws::EC2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ec2/types'
require_relative 'aws-sdk-ec2/paginators'
require_relative 'aws-sdk-ec2/schema'
require_relative 'aws-sdk-ec2/auth_parameters'
require_relative 'aws-sdk-ec2/auth_resolver'
require_relative 'aws-sdk-ec2/client'
require_relative 'aws-sdk-ec2/errors'
require_relative 'aws-sdk-ec2/endpoint_parameters'
require_relative 'aws-sdk-ec2/endpoint_provider'
require_relative 'aws-sdk-ec2/waiters'
require_relative 'aws-sdk-ec2/customizations'
