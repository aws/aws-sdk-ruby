# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisAnalytics', Module.new) unless Aws.const_defined?('KinesisAnalytics')

# @title Amazon Kinesis Analytics
# <fullname>Amazon Kinesis Analytics</fullname>
#         <p>
#             <b>Overview</b>
#          </p>
#         <note>
#             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
#          </note> 
#         <p>This is the <i>Amazon Kinesis Analytics v1 API Reference</i>. 
#             The Amazon Kinesis Analytics Developer Guide provides additional information. 
#             </p>
module Aws::KinesisAnalytics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisanalytics/types'
require_relative 'aws-sdk-kinesisanalytics/paginators'
require_relative 'aws-sdk-kinesisanalytics/schema'
require_relative 'aws-sdk-kinesisanalytics/auth_parameters'
require_relative 'aws-sdk-kinesisanalytics/auth_resolver'
require_relative 'aws-sdk-kinesisanalytics/client'
require_relative 'aws-sdk-kinesisanalytics/errors'
require_relative 'aws-sdk-kinesisanalytics/endpoint_parameters'
require_relative 'aws-sdk-kinesisanalytics/endpoint_provider'
require_relative 'aws-sdk-kinesisanalytics/waiters'
require_relative 'aws-sdk-kinesisanalytics/customizations'
