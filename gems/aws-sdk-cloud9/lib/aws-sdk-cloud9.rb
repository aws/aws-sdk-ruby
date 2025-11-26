# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Cloud9', Module.new) unless Aws.const_defined?('Cloud9')

# @title AWS Cloud9
# <fullname>Cloud9</fullname>
#          <p>Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and
#       release software in the cloud.</p>
#          <p>For more information about Cloud9, see the <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide">Cloud9 User Guide</a>.</p>
#          <important>
#             <p>Cloud9 is no longer available to new customers. Existing customers of 
#         Cloud9 can continue to use the service as normal. 
#         <a href="http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/">Learn more"</a>
#             </p>
#          </important>
#          <p>Cloud9 supports these operations:</p>
#          <ul>
#             <li>
#                <p>
#                   <code>CreateEnvironmentEC2</code>: Creates an Cloud9 development environment, launches
#           an Amazon EC2 instance, and then connects from the instance to the environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>CreateEnvironmentMembership</code>: Adds an environment member to an
#           environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is
#           connected to the environment, also terminates the instance.</p>
#             </li>
#             <li>
#                <p>
#                   <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an
#           environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>DescribeEnvironmentMemberships</code>: Gets information about environment
#           members for an environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>DescribeEnvironments</code>: Gets information about environments.</p>
#             </li>
#             <li>
#                <p>
#                   <code>DescribeEnvironmentStatus</code>: Gets status information for an
#           environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>ListEnvironments</code>: Gets a list of environment identifiers.</p>
#             </li>
#             <li>
#                <p>
#                   <code>ListTagsForResource</code>: Gets the tags for an environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>TagResource</code>: Adds tags to an environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>UntagResource</code>: Removes tags from an environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>UpdateEnvironment</code>: Changes the settings of an existing
#           environment.</p>
#             </li>
#             <li>
#                <p>
#                   <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing
#           environment member for an environment.</p>
#             </li>
#          </ul>
module Aws::Cloud9
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloud9/types'
require_relative 'aws-sdk-cloud9/paginators'
require_relative 'aws-sdk-cloud9/schema'
require_relative 'aws-sdk-cloud9/auth_parameters'
require_relative 'aws-sdk-cloud9/auth_resolver'
require_relative 'aws-sdk-cloud9/client'
require_relative 'aws-sdk-cloud9/errors'
require_relative 'aws-sdk-cloud9/endpoint_parameters'
require_relative 'aws-sdk-cloud9/endpoint_provider'
require_relative 'aws-sdk-cloud9/waiters'
require_relative 'aws-sdk-cloud9/customizations'
