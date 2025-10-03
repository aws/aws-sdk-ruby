# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Firehose', Module.new) unless Aws.const_defined?('Firehose')

# @title Amazon Kinesis Firehose
# <fullname>Amazon Data Firehose</fullname>
#          <note>
#             <p>Amazon Data Firehose was previously known as Amazon Kinesis Data Firehose.</p>
#          </note>
#          <p>Amazon Data Firehose is a fully managed service that delivers real-time streaming
#          data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon OpenSearch
#          Service, Amazon Redshift, Splunk, and various other supported destinations.</p>
module Aws::Firehose
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-firehose/types'
require_relative 'aws-sdk-firehose/paginators'
require_relative 'aws-sdk-firehose/schema'
require_relative 'aws-sdk-firehose/auth_parameters'
require_relative 'aws-sdk-firehose/auth_resolver'
require_relative 'aws-sdk-firehose/client'
require_relative 'aws-sdk-firehose/customizations'
require_relative 'aws-sdk-firehose/errors'
require_relative 'aws-sdk-firehose/endpoint_parameters'
require_relative 'aws-sdk-firehose/endpoint_provider'
require_relative 'aws-sdk-firehose/waiters'
