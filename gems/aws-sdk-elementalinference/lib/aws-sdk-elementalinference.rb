# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElementalInference', Module.new) unless Aws.const_defined?('ElementalInference')

# @title AWS Elemental Inference
# <p>This is the AWS Elemental Inference REST API Reference. It provides information on the URL, request contents, and response contents of each AWS Elemental Inference REST operation. </p> <p>We assume that you have the IAM permissions that you need to use AWS Elemental Inference via the REST API. We also assume that you are familiar with the features and operations of AWS Elemental Inference as described in <i>AWS Elemental Inference User Guide</i>. </p>
module Aws::ElementalInference
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elementalinference/types'
require_relative 'aws-sdk-elementalinference/paginators'
require_relative 'aws-sdk-elementalinference/schema'
require_relative 'aws-sdk-elementalinference/auth_parameters'
require_relative 'aws-sdk-elementalinference/auth_resolver'
require_relative 'aws-sdk-elementalinference/client'
require_relative 'aws-sdk-elementalinference/errors'
require_relative 'aws-sdk-elementalinference/endpoint_parameters'
require_relative 'aws-sdk-elementalinference/endpoint_provider'
require_relative 'aws-sdk-elementalinference/waiters'
require_relative 'aws-sdk-elementalinference/customizations'
