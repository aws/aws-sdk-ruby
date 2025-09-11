# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LexModelBuildingService', Module.new) unless Aws.const_defined?('LexModelBuildingService')

# @title Amazon Lex Model Building Service
# <fullname>Amazon Lex Build-Time Actions</fullname>
#          <p> Amazon Lex is an AWS service for building conversational voice and text
#       interfaces. Use these actions to create, update, and delete conversational
#       bots for new and existing client applications. </p>
module Aws::LexModelBuildingService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lexmodelbuildingservice/types'
require_relative 'aws-sdk-lexmodelbuildingservice/paginators'
require_relative 'aws-sdk-lexmodelbuildingservice/schema'
require_relative 'aws-sdk-lexmodelbuildingservice/auth_parameters'
require_relative 'aws-sdk-lexmodelbuildingservice/auth_resolver'
require_relative 'aws-sdk-lexmodelbuildingservice/client'
require_relative 'aws-sdk-lexmodelbuildingservice/customizations'
require_relative 'aws-sdk-lexmodelbuildingservice/errors'
require_relative 'aws-sdk-lexmodelbuildingservice/endpoint_parameters'
require_relative 'aws-sdk-lexmodelbuildingservice/endpoint_provider'
require_relative 'aws-sdk-lexmodelbuildingservice/waiters'
