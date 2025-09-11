# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KeyspacesStreams', Module.new) unless Aws.const_defined?('KeyspacesStreams')

# @title Amazon Keyspaces Streams
# <p>Amazon Keyspaces (for Apache Cassandra) change data capture (CDC) records change events for Amazon Keyspaces tables. The change events captured in a stream are time-ordered and de-duplicated write operations. Using stream data you can build event driven applications that incorporate near-real time change events from Amazon Keyspaces tables. </p> <p>Amazon Keyspaces CDC is serverless and scales the infrastructure for change events automatically based on the volume of changes on your table. </p> <p> This API reference describes the Amazon Keyspaces CDC stream API in detail. </p> <p>For more information about Amazon Keyspaces CDC, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cdc.html">Working with change data capture (CDC) streams in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>To learn how Amazon Keyspaces CDC API actions are recorded with CloudTrail, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail">Amazon Keyspaces information in CloudTrail</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>To see the metrics Amazon Keyspaces CDC sends to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/metrics-dimensions.html#keyspaces-cdc-metrics">Amazon Keyspaces change data capture (CDC) CloudWatch metrics</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
module Aws::KeyspacesStreams
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-keyspacesstreams/types'
require_relative 'aws-sdk-keyspacesstreams/paginators'
require_relative 'aws-sdk-keyspacesstreams/schema'
require_relative 'aws-sdk-keyspacesstreams/auth_parameters'
require_relative 'aws-sdk-keyspacesstreams/auth_resolver'
require_relative 'aws-sdk-keyspacesstreams/client'
require_relative 'aws-sdk-keyspacesstreams/customizations'
require_relative 'aws-sdk-keyspacesstreams/errors'
require_relative 'aws-sdk-keyspacesstreams/endpoint_parameters'
require_relative 'aws-sdk-keyspacesstreams/endpoint_provider'
require_relative 'aws-sdk-keyspacesstreams/waiters'
