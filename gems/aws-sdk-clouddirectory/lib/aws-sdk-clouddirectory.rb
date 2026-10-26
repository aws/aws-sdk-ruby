# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudDirectory', Module.new) unless Aws.const_defined?('CloudDirectory')

# @title Amazon CloudDirectory
# <fullname>Amazon Cloud Directory</fullname>
#          <p>Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the
#       development and management of cloud-scale web, mobile, and IoT applications. This guide
#       describes the Cloud Directory operations that you can call programmatically and includes
#       detailed information on data types and errors. For information about Cloud Directory features, see <a href="https://aws.amazon.com/directoryservice/">AWS Directory
#         Service</a> and the <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html">Amazon Cloud Directory Developer Guide</a>.</p>
#          <p>Amazon Cloud Directory is no longer open to new customers and will reach end of support on July 24, 2027. For alternatives to Amazon Cloud Directory, explore <a href="https://aws.amazon.com/dynamodb/">Amazon DynamoDB</a> and <a href="https://aws.amazon.com/neptune/">Amazon Neptune</a>. If you need help choosing the right alternative for your use case, or for any other questions, contact <a href="https://aws.amazon.com/support/">AWS Support</a>.</p>
module Aws::CloudDirectory
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-clouddirectory/types'
require_relative 'aws-sdk-clouddirectory/paginators'
require_relative 'aws-sdk-clouddirectory/schema'
require_relative 'aws-sdk-clouddirectory/auth_parameters'
require_relative 'aws-sdk-clouddirectory/auth_resolver'
require_relative 'aws-sdk-clouddirectory/client'
require_relative 'aws-sdk-clouddirectory/errors'
require_relative 'aws-sdk-clouddirectory/endpoint_parameters'
require_relative 'aws-sdk-clouddirectory/endpoint_provider'
require_relative 'aws-sdk-clouddirectory/waiters'
require_relative 'aws-sdk-clouddirectory/customizations'
