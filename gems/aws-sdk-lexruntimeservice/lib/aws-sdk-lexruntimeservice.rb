# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LexRuntimeService', Module.new) unless Aws.const_defined?('LexRuntimeService')

# @title Amazon Lex Runtime Service
# <p>Amazon Lex provides both build and runtime endpoints. Each endpoint
#       provides a set of operations (API). Your conversational bot uses the
#       runtime API to understand user utterances (user input text or voice). For
#       example, suppose a user says "I want pizza", your bot sends this input to
#       Amazon Lex using the runtime API. Amazon Lex recognizes that the user
#       request is for the OrderPizza intent (one of the intents defined in the
#       bot). Then Amazon Lex engages in user conversation on behalf of the bot to
#       elicit required information (slot values, such as pizza size and crust
#       type), and then performs fulfillment activity (that you configured when
#       you created the bot). You use the build-time API to create and manage your
#       Amazon Lex bot. For a list of build-time operations, see the build-time
#       API, . </p>
module Aws::LexRuntimeService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lexruntimeservice/types'
require_relative 'aws-sdk-lexruntimeservice/paginators'
require_relative 'aws-sdk-lexruntimeservice/schema'
require_relative 'aws-sdk-lexruntimeservice/auth_parameters'
require_relative 'aws-sdk-lexruntimeservice/auth_resolver'
require_relative 'aws-sdk-lexruntimeservice/client'
require_relative 'aws-sdk-lexruntimeservice/customizations'
require_relative 'aws-sdk-lexruntimeservice/errors'
require_relative 'aws-sdk-lexruntimeservice/endpoint_parameters'
require_relative 'aws-sdk-lexruntimeservice/endpoint_provider'
require_relative 'aws-sdk-lexruntimeservice/waiters'
