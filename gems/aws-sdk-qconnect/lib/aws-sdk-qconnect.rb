# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QConnect', Module.new) unless Aws.const_defined?('QConnect')

# @title Amazon Q Connect
# <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Q_Connect.html">Amazon Q actions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Q_Connect.html">Amazon Q data types</a> </p> </li> </ul> <note> <p> <b>Powered by Amazon Bedrock</b>: Amazon Web Services implements <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/abuse-detection.html">automated abuse detection</a>. Because Amazon Q in Connect is built on Amazon Bedrock, users can take full advantage of the controls implemented in Amazon Bedrock to enforce safety, security, and the responsible use of artificial intelligence (AI).</p> </note> <p>Amazon Q in Connect is a generative AI customer service assistant. It is an LLM-enhanced evolution of Amazon Connect Wisdom that delivers real-time recommendations to help contact center agents resolve customer issues quickly and accurately.</p> <p>Amazon Q in Connect automatically detects customer intent during calls and chats using conversational analytics and natural language understanding (NLU). It then provides agents with immediate, real-time generative responses and suggested actions, and links to relevant documents and articles. Agents can also query Amazon Q in Connect directly using natural language or keywords to answer customer requests.</p> <p>Use the Amazon Q in Connect APIs to create an assistant and a knowledge base, for example, or manage content by uploading custom files.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html">Use Amazon Q in Connect for generative AI powered agent assistance in real-time</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
module Aws::QConnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-qconnect/types'
require_relative 'aws-sdk-qconnect/paginators'
require_relative 'aws-sdk-qconnect/schema'
require_relative 'aws-sdk-qconnect/auth_parameters'
require_relative 'aws-sdk-qconnect/auth_resolver'
require_relative 'aws-sdk-qconnect/client'
require_relative 'aws-sdk-qconnect/customizations'
require_relative 'aws-sdk-qconnect/errors'
require_relative 'aws-sdk-qconnect/endpoint_parameters'
require_relative 'aws-sdk-qconnect/endpoint_provider'
require_relative 'aws-sdk-qconnect/waiters'
