# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSO', Module.new) unless Aws.const_defined?('SSO')

# @title AWS Single Sign-On
# <p>AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web service that makes it easy for you to assign user access to
#       IAM Identity Center resources such as the AWS access portal. Users can get AWS account applications and roles
#       assigned to them and get federated into the application.</p>
#          <note>
#             <p>Although AWS Single Sign-On was renamed, the <code>sso</code> and
#           <code>identitystore</code> API namespaces will continue to retain their original name for
#         backward compatibility purposes. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed">IAM Identity Center rename</a>.</p>
#          </note>
#          <p>This reference guide describes the IAM Identity Center Portal operations that you can call
#       programatically and includes detailed information on data types and errors.</p>
#          <note>
#             <p>AWS provides SDKs that consist of libraries and sample code for various programming
#         languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a
#         convenient way to create programmatic access to IAM Identity Center and other AWS services. For more
#         information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
#          </note>
module Aws::SSO
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sso/types'
require_relative 'aws-sdk-sso/paginators'
require_relative 'aws-sdk-sso/schema'
require_relative 'aws-sdk-sso/auth_parameters'
require_relative 'aws-sdk-sso/auth_resolver'
require_relative 'aws-sdk-sso/client'
require_relative 'aws-sdk-sso/customizations'
require_relative 'aws-sdk-sso/errors'
require_relative 'aws-sdk-sso/endpoint_parameters'
require_relative 'aws-sdk-sso/endpoint_provider'
require_relative 'aws-sdk-sso/waiters'
