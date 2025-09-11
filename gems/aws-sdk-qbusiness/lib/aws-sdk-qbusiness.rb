# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QBusiness', Module.new) unless Aws.const_defined?('QBusiness')

# @title QBusiness
# <p>This is the <i>Amazon Q Business</i> API Reference. Amazon Q Business is a fully managed, generative-AI powered enterprise chat assistant that you can deploy within your organization. Amazon Q Business enhances employee productivity by supporting key tasks such as question-answering, knowledge discovery, writing email messages, summarizing text, drafting document outlines, and brainstorming ideas. Users ask questions of Amazon Q Business and get answers that are presented in a conversational manner. For an introduction to the service, see the <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html"> <i>Amazon Q Business User Guide</i> </a>.</p> <p>For an overview of the Amazon Q Business APIs, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview">Overview of Amazon Q Business API operations</a>.</p> <p>For information about the IAM access control permissions you need to use this API, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html">IAM roles for Amazon Q Business</a> in the <i>Amazon Q Business User Guide</i>.</p> <p>The following resources provide additional information about using the Amazon Q Business API:</p> <ul> <li> <p> <i> <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html">Setting up for Amazon Q Business</a> </i> </p> </li> <li> <p> <i> <a href="https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html">Amazon Q Business CLI Reference</a> </i> </p> </li> <li> <p> <i> <a href="https://docs.aws.amazon.com/general/latest/gr/amazonq.html">Amazon Web Services General Reference</a> </i> </p> </li> </ul>
module Aws::QBusiness
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-qbusiness/types'
require_relative 'aws-sdk-qbusiness/paginators'
require_relative 'aws-sdk-qbusiness/schema'
require_relative 'aws-sdk-qbusiness/auth_parameters'
require_relative 'aws-sdk-qbusiness/auth_resolver'
require_relative 'aws-sdk-qbusiness/client'
require_relative 'aws-sdk-qbusiness/customizations'
require_relative 'aws-sdk-qbusiness/errors'
require_relative 'aws-sdk-qbusiness/endpoint_parameters'
require_relative 'aws-sdk-qbusiness/endpoint_provider'
require_relative 'aws-sdk-qbusiness/waiters'
