# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppStream', Module.new) unless Aws.const_defined?('AppStream')

# @title Amazon AppStream
# <fullname>Amazon AppStream 2.0</fullname>
#          <p>This is the <i>Amazon AppStream 2.0 API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. </p>
#          <note>
#             <p>You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html">Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
#          </note>
#          <p>To learn more about AppStream 2.0, see the following resources:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/appstream2">Amazon AppStream 2.0 product page</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/documentation/appstream2">Amazon AppStream 2.0 documentation</a>
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
