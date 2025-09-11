# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TimestreamWrite', Module.new) unless Aws.const_defined?('TimestreamWrite')

# @title Amazon Timestream Write
# <fullname>Amazon Timestream Write</fullname>
#          <p>Amazon Timestream is a fast, scalable, fully managed time-series database service
#          that makes it easy to store and analyze trillions of time-series data points per day. With
#             Timestream, you can easily store and analyze IoT sensor data to derive insights
#          from your IoT applications. You can analyze industrial telemetry to streamline equipment
#          management and maintenance. You can also store and analyze log data and metrics to improve
#          the performance and availability of your applications. </p>
#          <p>Timestream is built from the ground up to effectively ingest, process, and
#          store time-series data. It organizes data to optimize query processing. It automatically
#          scales based on the volume of data ingested and on the query volume to ensure you receive
#          optimal performance while inserting and querying data. As your data grows over time,
#             Timestream’s adaptive query processing engine spans across storage tiers to
#          provide fast analysis while reducing costs.</p>
module Aws::TimestreamWrite
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-timestreamwrite/types'
require_relative 'aws-sdk-timestreamwrite/paginators'
require_relative 'aws-sdk-timestreamwrite/schema'
require_relative 'aws-sdk-timestreamwrite/auth_parameters'
require_relative 'aws-sdk-timestreamwrite/auth_resolver'
require_relative 'aws-sdk-timestreamwrite/client'
require_relative 'aws-sdk-timestreamwrite/customizations'
require_relative 'aws-sdk-timestreamwrite/errors'
require_relative 'aws-sdk-timestreamwrite/endpoint_parameters'
require_relative 'aws-sdk-timestreamwrite/endpoint_provider'
require_relative 'aws-sdk-timestreamwrite/waiters'
