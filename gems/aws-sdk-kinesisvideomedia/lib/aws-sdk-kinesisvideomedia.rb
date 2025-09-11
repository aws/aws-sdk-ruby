# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisVideoMedia', Module.new) unless Aws.const_defined?('KinesisVideoMedia')

# @title Amazon Kinesis Video Streams Media
# <p></p>
module Aws::KinesisVideoMedia
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisvideomedia/types'
require_relative 'aws-sdk-kinesisvideomedia/paginators'
require_relative 'aws-sdk-kinesisvideomedia/schema'
require_relative 'aws-sdk-kinesisvideomedia/auth_parameters'
require_relative 'aws-sdk-kinesisvideomedia/auth_resolver'
require_relative 'aws-sdk-kinesisvideomedia/client'
require_relative 'aws-sdk-kinesisvideomedia/customizations'
require_relative 'aws-sdk-kinesisvideomedia/errors'
require_relative 'aws-sdk-kinesisvideomedia/endpoint_parameters'
require_relative 'aws-sdk-kinesisvideomedia/endpoint_provider'
require_relative 'aws-sdk-kinesisvideomedia/waiters'
