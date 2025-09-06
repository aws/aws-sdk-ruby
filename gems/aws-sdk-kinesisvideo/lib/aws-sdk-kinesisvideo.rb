# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisVideo', Module.new) unless Aws.const_defined?('KinesisVideo')

# @title Amazon Kinesis Video Streams
# <p></p>
module Aws::KinesisVideo
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisvideo/types'
require_relative 'aws-sdk-kinesisvideo/paginators'
require_relative 'aws-sdk-kinesisvideo/schema'
require_relative 'aws-sdk-kinesisvideo/auth_parameters'
require_relative 'aws-sdk-kinesisvideo/auth_resolver'
require_relative 'aws-sdk-kinesisvideo/client'
require_relative 'aws-sdk-kinesisvideo/customizations'
require_relative 'aws-sdk-kinesisvideo/errors'
require_relative 'aws-sdk-kinesisvideo/endpoint_parameters'
require_relative 'aws-sdk-kinesisvideo/endpoint_provider'
require_relative 'aws-sdk-kinesisvideo/waiters'
