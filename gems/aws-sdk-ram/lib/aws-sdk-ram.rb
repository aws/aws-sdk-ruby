# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RAM', Module.new) unless Aws.const_defined?('RAM')

# @title AWS Resource Access Manager
# <p>This is the <i>Resource Access Manager API Reference</i>. This documentation provides
#             descriptions and syntax for each of the actions and data types in RAM. RAM is a
#             service that helps you securely share your Amazon Web Services resources to other Amazon Web Services accounts. If
#             you use Organizations to manage your accounts, then you can share your resources with your
#             entire organization or to organizational units (OUs). For supported resource types, you
#             can also share resources with individual Identity and Access Management (IAM) roles and users. </p>
#          <p>To learn more about RAM, see the following resources:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/ram">Resource Access Manager product page</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/ram/latest/userguide/">Resource Access Manager User
#                         Guide</a>
#                </p>
#             </li>
#          </ul>
module Aws::RAM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ram/types'
require_relative 'aws-sdk-ram/paginators'
require_relative 'aws-sdk-ram/schema'
require_relative 'aws-sdk-ram/auth_parameters'
require_relative 'aws-sdk-ram/auth_resolver'
require_relative 'aws-sdk-ram/client'
require_relative 'aws-sdk-ram/customizations'
require_relative 'aws-sdk-ram/errors'
require_relative 'aws-sdk-ram/endpoint_parameters'
require_relative 'aws-sdk-ram/endpoint_provider'
require_relative 'aws-sdk-ram/waiters'
