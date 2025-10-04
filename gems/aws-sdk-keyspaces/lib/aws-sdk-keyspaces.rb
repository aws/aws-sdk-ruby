# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Keyspaces', Module.new) unless Aws.const_defined?('Keyspaces')

# @title Amazon Keyspaces
# <p>Amazon Keyspaces (for Apache Cassandra) is a scalable, highly available, and managed Apache Cassandra-compatible database service. Amazon Keyspaces makes it easy to migrate, run, and scale Cassandra workloads in the Amazon Web Services Cloud. With just a few clicks on the Amazon Web Services Management Console or a few lines of code, you can create keyspaces and tables in Amazon Keyspaces, without deploying any infrastructure or installing software. </p> <p>In addition to supporting Cassandra Query Language (CQL) requests via open-source Cassandra drivers, Amazon Keyspaces supports data definition language (DDL) operations to manage keyspaces and tables using the Amazon Web Services SDK and CLI, as well as infrastructure as code (IaC) services and tools such as CloudFormation and Terraform. This API reference describes the supported DDL operations in detail.</p> <p>For the list of all supported CQL APIs, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html">Supported Cassandra APIs, operations, and data types in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>To learn how Amazon Keyspaces API actions are recorded with CloudTrail, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail">Amazon Keyspaces information in CloudTrail</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>For more information about Amazon Web Services APIs, for example how to implement retry logic or how to sign Amazon Web Services API requests, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-apis.html">Amazon Web Services APIs</a> in the <i>General Reference</i>.</p>
module Aws::Keyspaces
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-keyspaces/types'
require_relative 'aws-sdk-keyspaces/paginators'
require_relative 'aws-sdk-keyspaces/schema'
require_relative 'aws-sdk-keyspaces/auth_parameters'
require_relative 'aws-sdk-keyspaces/auth_resolver'
require_relative 'aws-sdk-keyspaces/client'
require_relative 'aws-sdk-keyspaces/customizations'
require_relative 'aws-sdk-keyspaces/errors'
require_relative 'aws-sdk-keyspaces/endpoint_parameters'
require_relative 'aws-sdk-keyspaces/endpoint_provider'
require_relative 'aws-sdk-keyspaces/waiters'
