# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EC2', Module.new) unless Aws.const_defined?('EC2')

# @title Amazon Elastic Compute Cloud
# <fullname>Amazon Elastic Compute Cloud</fullname>
#          <p>You can access the features of Amazon Elastic Compute Cloud (Amazon EC2) programmatically. For more information,
#         see the <a href="https://docs.aws.amazon.com/ec2/latest/devguide">Amazon EC2 Developer Guide</a>.</p>
module Aws::EC2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ec2/types'
require_relative 'aws-sdk-ec2/paginators'
require_relative 'aws-sdk-ec2/schema'
require_relative 'aws-sdk-ec2/auth_parameters'
require_relative 'aws-sdk-ec2/auth_resolver'
require_relative 'aws-sdk-ec2/client'
require_relative 'aws-sdk-ec2/customizations'
require_relative 'aws-sdk-ec2/errors'
require_relative 'aws-sdk-ec2/endpoint_parameters'
require_relative 'aws-sdk-ec2/endpoint_provider'
require_relative 'aws-sdk-ec2/waiters'
