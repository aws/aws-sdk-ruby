# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SNS', Module.new) unless Aws.const_defined?('SNS')

# @title Amazon Simple Notification Service
# <fullname>Amazon Simple Notification Service</fullname>
#          <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you
#             to build distributed web-enabled applications. Applications can use Amazon SNS to easily push
#             real-time notification messages to interested subscribers over multiple delivery
#             protocols. For more information about this product see the <a href="http://aws.amazon.com/sns/">Amazon SNS product page</a>. For detailed information about Amazon SNS features
#             and their associated API calls, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p>
#          <p>For information on the permissions you need to use this API, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html">Identity and access management in Amazon SNS</a> in the <i>Amazon SNS Developer
#                 Guide.</i>
#          </p>
#          <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming
#             language. The SDKs contain functionality that automatically takes care of tasks such as:
#             cryptographically signing your service requests, retrying requests, and handling error
#             responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>
module Aws::SNS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sns/types'
require_relative 'aws-sdk-sns/paginators'
require_relative 'aws-sdk-sns/schema'
require_relative 'aws-sdk-sns/auth_parameters'
require_relative 'aws-sdk-sns/auth_resolver'
require_relative 'aws-sdk-sns/client'
require_relative 'aws-sdk-sns/customizations'
require_relative 'aws-sdk-sns/errors'
require_relative 'aws-sdk-sns/endpoint_parameters'
require_relative 'aws-sdk-sns/endpoint_provider'
require_relative 'aws-sdk-sns/waiters'
