# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EFS', Module.new) unless Aws.const_defined?('EFS')

# @title Amazon Elastic File System
# <fullname>Amazon Elastic File System</fullname>
#          <p>Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for
#       use with Amazon EC2 Linux and Mac instances in the Amazon Web Services Cloud. With
#         Amazon EFS, storage capacity is elastic, growing and shrinking automatically as you
#       add and remove files, so that your applications have the storage they need, when they need it.
#       For more information, see the <a href="https://docs.aws.amazon.com/efs/latest/ug/api-reference.html">Amazon Elastic File System API Reference</a> and
#       the <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html">Amazon Elastic File System
#         User Guide</a>.</p>
module Aws::EFS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-efs/types'
require_relative 'aws-sdk-efs/paginators'
require_relative 'aws-sdk-efs/schema'
require_relative 'aws-sdk-efs/auth_parameters'
require_relative 'aws-sdk-efs/auth_resolver'
require_relative 'aws-sdk-efs/client'
require_relative 'aws-sdk-efs/customizations'
require_relative 'aws-sdk-efs/errors'
require_relative 'aws-sdk-efs/endpoint_parameters'
require_relative 'aws-sdk-efs/endpoint_provider'
require_relative 'aws-sdk-efs/waiters'
