# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisAnalyticsV2', Module.new) unless Aws.const_defined?('KinesisAnalyticsV2')

# @title Amazon Kinesis Analytics
# <note>
#             <p>Amazon Managed Service for Apache Flink was previously known as Amazon Kinesis Data Analytics for Apache Flink.</p>
#          </note>
#          <p>Amazon Managed Service for Apache Flink is a fully managed service that you can use to process and analyze streaming data using Java, Python, SQL, or Scala. The service
#       enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time
#       series analytics, feed real-time dashboards, and create real-time metrics.</p>
module Aws::KinesisAnalyticsV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisanalyticsv2/types'
require_relative 'aws-sdk-kinesisanalyticsv2/paginators'
require_relative 'aws-sdk-kinesisanalyticsv2/schema'
require_relative 'aws-sdk-kinesisanalyticsv2/auth_parameters'
require_relative 'aws-sdk-kinesisanalyticsv2/auth_resolver'
require_relative 'aws-sdk-kinesisanalyticsv2/client'
require_relative 'aws-sdk-kinesisanalyticsv2/customizations'
require_relative 'aws-sdk-kinesisanalyticsv2/errors'
require_relative 'aws-sdk-kinesisanalyticsv2/endpoint_parameters'
require_relative 'aws-sdk-kinesisanalyticsv2/endpoint_provider'
require_relative 'aws-sdk-kinesisanalyticsv2/waiters'
