# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IAM', Module.new) unless Aws.const_defined?('IAM')

# @title AWS Identity and Access Management
# <fullname>Identity and Access Management</fullname>
#          <p>Identity and Access Management (IAM) is a web service for securely controlling 
#       access to Amazon Web Services services. With IAM, you can centrally manage users, security credentials
#       such as access keys, and permissions that control which Amazon Web Services resources users and 
#       applications can access. For more information about IAM, see <a href="http://aws.amazon.com/iam/">Identity and Access Management (IAM)</a> and the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/">Identity and Access Management User Guide</a>.</p>
module Aws::IAM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iam/types'
require_relative 'aws-sdk-iam/paginators'
require_relative 'aws-sdk-iam/schema'
require_relative 'aws-sdk-iam/auth_parameters'
require_relative 'aws-sdk-iam/auth_resolver'
require_relative 'aws-sdk-iam/client'
require_relative 'aws-sdk-iam/customizations'
require_relative 'aws-sdk-iam/errors'
require_relative 'aws-sdk-iam/endpoint_parameters'
require_relative 'aws-sdk-iam/endpoint_provider'
require_relative 'aws-sdk-iam/waiters'
