# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LexModelsV2', Module.new) unless Aws.const_defined?('LexModelsV2')

# @title Amazon Lex Model Building V2
# <p>This document provides detailed information about the Amazon Lex V2 API actions and their parameters.</p>
#          <p>For information about the IAM access control permissions you need to use this API, see
#         <a href="https://docs.aws.amazon.com/lexv2/latest/dg/security_iam_service-with-iam.html">Identity-based policies for Amazon Lex V2</a>.</p>
#          <p>Amazon Lex V2 Model Building V2 operations let you build and manage bots.</p>
#          <p>If you use a custom HTTP client to call Amazon Lex Model Building
#         V2 operations, you must set the "Content-Type" HTTP header to
#         "application/x-amz-json-1.1". Otherwise, you receive an HTTP 404 -
#         UnknownOperationException in the response.</p>
#          <p>Amazon Lex Model Building V2 operations return the responses with
#         the "application/x-amz-json-1.1" content type.</p>
#          <p>You can use <a href="http://aws.amazon.com/tools/#sdk">Amazon Web Services SDKs</a> to access Amazon Lex V2 APIs using your favorite programming language.
#         The SDKs automatically perform useful tasks for you, such as:</p>
#          <ul>
#             <li>
#                <p>Cryptographically sign your service requests</p>
#             </li>
#             <li>
#                <p>Retry requests</p>
#             </li>
#             <li>
#                <p>Handle error responses</p>
#             </li>
#          </ul>
#          <p>The following resources provide additional information about the Amazon Lex V2 Model Building API.</p>
#          <ul>
#             <li>
#                <p>
#                   <i>Amazon Web Services General Reference</i>
#                </p>
#                <ul>
#                   <li>
#                      <p>
#                         <a href="https://docs.aws.amazon.com/general/latest/gr/lex.html">Amazon Lex V2 Endpoints for each region</a>.</p>
#                   </li>
#                </ul>
#             </li>
#             <li>
#                <p>
#                   <i>Command Line Interface</i>
#                </p>
#                <ul>
#                   <li>
#                      <p>
#                         <a href="https://docs.aws.amazon.com/cli/latest/reference/lexv2-models/index.html">
#                     Amazon Lex Model Building V2 CLI commands</a>.</p>
#                   </li>
#                </ul>
#             </li>
#          </ul>
module Aws::LexModelsV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lexmodelsv2/types'
require_relative 'aws-sdk-lexmodelsv2/paginators'
require_relative 'aws-sdk-lexmodelsv2/schema'
require_relative 'aws-sdk-lexmodelsv2/auth_parameters'
require_relative 'aws-sdk-lexmodelsv2/auth_resolver'
require_relative 'aws-sdk-lexmodelsv2/client'
require_relative 'aws-sdk-lexmodelsv2/errors'
require_relative 'aws-sdk-lexmodelsv2/endpoint_parameters'
require_relative 'aws-sdk-lexmodelsv2/endpoint_provider'
require_relative 'aws-sdk-lexmodelsv2/waiters'
require_relative 'aws-sdk-lexmodelsv2/customizations'
