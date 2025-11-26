# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ChimeSDKMediaPipelines', Module.new) unless Aws.const_defined?('ChimeSDKMediaPipelines')

# @title Amazon Chime SDK Media Pipelines
# <p>The Amazon Chime SDK media pipeline APIs in this section allow software developers to
#          create Amazon Chime SDK media pipelines that capture, concatenate, or stream your Amazon Chime SDK meetings. For more information about media pipelines, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html">Amazon Chime SDK media pipelines</a>. </p>
module Aws::ChimeSDKMediaPipelines
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-chimesdkmediapipelines/types'
require_relative 'aws-sdk-chimesdkmediapipelines/paginators'
require_relative 'aws-sdk-chimesdkmediapipelines/schema'
require_relative 'aws-sdk-chimesdkmediapipelines/auth_parameters'
require_relative 'aws-sdk-chimesdkmediapipelines/auth_resolver'
require_relative 'aws-sdk-chimesdkmediapipelines/client'
require_relative 'aws-sdk-chimesdkmediapipelines/errors'
require_relative 'aws-sdk-chimesdkmediapipelines/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmediapipelines/endpoint_provider'
require_relative 'aws-sdk-chimesdkmediapipelines/waiters'
require_relative 'aws-sdk-chimesdkmediapipelines/customizations'
