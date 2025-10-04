# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DLM', Module.new) unless Aws.const_defined?('DLM')

# @title Amazon Data Lifecycle Manager
# <fullname>Amazon Data Lifecycle Manager</fullname>
#          <p>With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon Web Services resources. You create
# 			lifecycle policies, which are used to automate operations on the specified
# 			resources.</p>
#          <p>Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots. For information about using Amazon Data Lifecycle Manager
# 			with Amazon EBS, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html">
# 				Amazon Data Lifecycle Manager</a> in the <i>Amazon EC2 User Guide</i>.</p>
module Aws::DLM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dlm/types'
require_relative 'aws-sdk-dlm/paginators'
require_relative 'aws-sdk-dlm/schema'
require_relative 'aws-sdk-dlm/auth_parameters'
require_relative 'aws-sdk-dlm/auth_resolver'
require_relative 'aws-sdk-dlm/client'
require_relative 'aws-sdk-dlm/customizations'
require_relative 'aws-sdk-dlm/errors'
require_relative 'aws-sdk-dlm/endpoint_parameters'
require_relative 'aws-sdk-dlm/endpoint_provider'
require_relative 'aws-sdk-dlm/waiters'
