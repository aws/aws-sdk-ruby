# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppStream', Module.new) unless Aws.const_defined?('AppStream')

# @title Amazon AppStream
# <fullname>Amazon WorkSpaces Applications</fullname>
#          <p>This is the <i>Amazon WorkSpaces Applications API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in WorkSpaces Applications. WorkSpaces Applications is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. WorkSpaces Applications manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. </p>
#          <note>
#             <p>You can call the WorkSpaces Applications API operations by using an interface VPC endpoint (interface endpoint). For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html">Access WorkSpaces Applications API Operations and CLI Commands Through an Interface VPC Endpoint</a> in the <i>Amazon WorkSpaces Applications Administration Guide</i>.</p>
#          </note>
#          <p>To learn more about WorkSpaces Applications, see the following resources:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/appstream2">Amazon WorkSpaces Applications product page</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/documentation/appstream2">Amazon WorkSpaces Applications documentation</a>
#                </p>
#             </li>
#          </ul>
module Aws::AppStream
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-appstream/types'
require_relative 'aws-sdk-appstream/paginators'
require_relative 'aws-sdk-appstream/schema'
require_relative 'aws-sdk-appstream/auth_parameters'
require_relative 'aws-sdk-appstream/auth_resolver'
require_relative 'aws-sdk-appstream/client'
require_relative 'aws-sdk-appstream/errors'
require_relative 'aws-sdk-appstream/endpoint_parameters'
require_relative 'aws-sdk-appstream/endpoint_provider'
require_relative 'aws-sdk-appstream/waiters'
require_relative 'aws-sdk-appstream/customizations'
