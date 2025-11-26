# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisVideoArchivedMedia', Module.new) unless Aws.const_defined?('KinesisVideoArchivedMedia')

# @title Amazon Kinesis Video Streams Archived Media
# <p></p>
module Aws::KinesisVideoArchivedMedia
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisvideoarchivedmedia/types'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/paginators'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/schema'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/auth_parameters'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/auth_resolver'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/client'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/errors'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/endpoint_parameters'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/endpoint_provider'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/waiters'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/customizations'
