# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3Control', Module.new) unless Aws.const_defined?('S3Control')

# @title AWS S3 Control
# <p> Amazon Web Services S3 Control provides access to Amazon S3 control plane actions. </p>
module Aws::S3Control
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3control/types'
require_relative 'aws-sdk-s3control/paginators'
require_relative 'aws-sdk-s3control/schema'
require_relative 'aws-sdk-s3control/auth_parameters'
require_relative 'aws-sdk-s3control/auth_resolver'
require_relative 'aws-sdk-s3control/client'
require_relative 'aws-sdk-s3control/customizations'
require_relative 'aws-sdk-s3control/errors'
require_relative 'aws-sdk-s3control/endpoint_parameters'
require_relative 'aws-sdk-s3control/endpoint_provider'
require_relative 'aws-sdk-s3control/waiters'
