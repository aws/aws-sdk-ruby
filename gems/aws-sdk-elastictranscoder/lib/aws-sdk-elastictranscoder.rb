# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElasticTranscoder', Module.new) unless Aws.const_defined?('ElasticTranscoder')

# @title Amazon Elastic Transcoder
# <fullname>AWS Elastic Transcoder Service</fullname>
#         <p>The AWS Elastic Transcoder Service.</p>
module Aws::ElasticTranscoder
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elastictranscoder/types'
require_relative 'aws-sdk-elastictranscoder/paginators'
require_relative 'aws-sdk-elastictranscoder/schema'
require_relative 'aws-sdk-elastictranscoder/auth_parameters'
require_relative 'aws-sdk-elastictranscoder/auth_resolver'
require_relative 'aws-sdk-elastictranscoder/client'
require_relative 'aws-sdk-elastictranscoder/customizations'
require_relative 'aws-sdk-elastictranscoder/errors'
require_relative 'aws-sdk-elastictranscoder/endpoint_parameters'
require_relative 'aws-sdk-elastictranscoder/endpoint_provider'
require_relative 'aws-sdk-elastictranscoder/waiters'
