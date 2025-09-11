# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Chatbot', Module.new) unless Aws.const_defined?('Chatbot')

# @title AWS Chatbot
# <p>The <i>AWS Chatbot API Reference</i> provides descriptions, API request parameters, and the XML response for each of the AWS Chatbot API actions.</p>
#          <p>AWS Chatbot APIs are currently available in the following Regions:</p>
#          <ul>
#             <li>
#                <p>US East (Ohio) - <code>us-east-2</code>
#                </p>
#             </li>
#             <li>
#                <p>US West (Oregon) - <code>us-west-2</code>
#                </p>
#             </li>
#             <li>
#                <p>Asia Pacific (Singapore) - <code>ap-southeast-1</code>
#                </p>
#             </li>
#             <li>
#                <p>Europe (Ireland) - <code>eu-west-1</code>
#                </p>
#             </li>
#          </ul>
#          <p>The AWS Chatbot console can only be used in US East (Ohio). Your configuration data however, is stored in each of the relevant available Regions.</p>
#          <note>
#             <p>Your AWS CloudTrail events are logged in whatever Region you call from, not US East (N. Virginia) by default.</p>
#          </note>
module Aws::Chatbot
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chatbot/types'
require_relative 'aws-sdk-chatbot/paginators'
require_relative 'aws-sdk-chatbot/schema'
require_relative 'aws-sdk-chatbot/auth_parameters'
require_relative 'aws-sdk-chatbot/auth_resolver'
require_relative 'aws-sdk-chatbot/client'
require_relative 'aws-sdk-chatbot/customizations'
require_relative 'aws-sdk-chatbot/errors'
require_relative 'aws-sdk-chatbot/endpoint_parameters'
require_relative 'aws-sdk-chatbot/endpoint_provider'
require_relative 'aws-sdk-chatbot/waiters'
