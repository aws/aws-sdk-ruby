# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ChimeSDKIdentity', Module.new) unless Aws.const_defined?('ChimeSDKIdentity')

# @title Amazon Chime SDK Identity
# <p>The Amazon Chime SDK Identity APIs in this section allow software developers to create
#          and manage unique instances of their messaging applications. These APIs provide the
#          overarching framework for creating and sending messages. For more information about the
#          identity APIs, refer to <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html">Amazon Chime SDK identity</a>.</p>
module Aws::ChimeSDKIdentity
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chimesdkidentity/types'
require_relative 'aws-sdk-chimesdkidentity/paginators'
require_relative 'aws-sdk-chimesdkidentity/schema'
require_relative 'aws-sdk-chimesdkidentity/auth_parameters'
require_relative 'aws-sdk-chimesdkidentity/auth_resolver'
require_relative 'aws-sdk-chimesdkidentity/client'
require_relative 'aws-sdk-chimesdkidentity/customizations'
require_relative 'aws-sdk-chimesdkidentity/errors'
require_relative 'aws-sdk-chimesdkidentity/endpoint_parameters'
require_relative 'aws-sdk-chimesdkidentity/endpoint_provider'
require_relative 'aws-sdk-chimesdkidentity/waiters'
