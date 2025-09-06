# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectContactLens', Module.new) unless Aws.const_defined?('ConnectContactLens')

# @title Amazon Connect Contact Lens
# <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Contact_Lens.html">Contact Lens actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Contact_Lens.html">Contact Lens data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>Amazon Connect Contact Lens enables you to analyze conversations between customer and agents, by using
#             speech transcription, natural language processing, and intelligent search capabilities.
#             It performs sentiment analysis, detects issues, and enables you to automatically
#             categorize contacts.</p>
#          <p>Amazon Connect Contact Lens provides both real-time and post-call analytics of customer-agent
#             conversations. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html">Analyze conversations
#                 using speech analytics</a> in the <i>Amazon Connect Administrator
#             Guide</i>. </p>
module Aws::ConnectContactLens
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connectcontactlens/types'
require_relative 'aws-sdk-connectcontactlens/paginators'
require_relative 'aws-sdk-connectcontactlens/schema'
require_relative 'aws-sdk-connectcontactlens/auth_parameters'
require_relative 'aws-sdk-connectcontactlens/auth_resolver'
require_relative 'aws-sdk-connectcontactlens/client'
require_relative 'aws-sdk-connectcontactlens/customizations'
require_relative 'aws-sdk-connectcontactlens/errors'
require_relative 'aws-sdk-connectcontactlens/endpoint_parameters'
require_relative 'aws-sdk-connectcontactlens/endpoint_provider'
require_relative 'aws-sdk-connectcontactlens/waiters'
