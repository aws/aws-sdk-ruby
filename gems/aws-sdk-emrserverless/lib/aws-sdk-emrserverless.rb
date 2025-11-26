# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EMRServerless', Module.new) unless Aws.const_defined?('EMRServerless')

# @title EMR Serverless
# <p>Amazon EMR Serverless is a new deployment option for Amazon EMR. Amazon EMR Serverless provides a serverless runtime environment that simplifies running analytics applications using the latest open source frameworks such as Apache Spark and Apache Hive. With Amazon EMR Serverless, you don’t have to configure, optimize, secure, or operate clusters to run applications with these frameworks.</p> <p>The API reference to Amazon EMR Serverless is <code>emr-serverless</code>. The <code>emr-serverless</code> prefix is used in the following scenarios: </p> <ul> <li> <p>It is the prefix in the CLI commands for Amazon EMR Serverless. For example, <code>aws emr-serverless start-job-run</code>.</p> </li> <li> <p>It is the prefix before IAM policy actions for Amazon EMR Serverless. For example, <code>"Action": ["emr-serverless:StartJobRun"]</code>. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions">Policy actions for Amazon EMR Serverless</a>.</p> </li> <li> <p>It is the prefix used in Amazon EMR Serverless service endpoints. For example, <code>emr-serverless.us-east-2.amazonaws.com</code>.</p> </li> </ul>
module Aws::EMRServerless
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-emrserverless/types'
require_relative 'aws-sdk-emrserverless/paginators'
require_relative 'aws-sdk-emrserverless/schema'
require_relative 'aws-sdk-emrserverless/auth_parameters'
require_relative 'aws-sdk-emrserverless/auth_resolver'
require_relative 'aws-sdk-emrserverless/client'
require_relative 'aws-sdk-emrserverless/errors'
require_relative 'aws-sdk-emrserverless/endpoint_parameters'
require_relative 'aws-sdk-emrserverless/endpoint_provider'
require_relative 'aws-sdk-emrserverless/waiters'
require_relative 'aws-sdk-emrserverless/customizations'
