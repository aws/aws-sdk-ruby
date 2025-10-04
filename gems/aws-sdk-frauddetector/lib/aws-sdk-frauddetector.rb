# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('FraudDetector', Module.new) unless Aws.const_defined?('FraudDetector')

# @title Amazon Fraud Detector
# <p>This is the Amazon Fraud Detector API Reference. This guide is for developers who need
#             detailed information about Amazon Fraud Detector API actions, data types, and errors. For
#             more information about Amazon Fraud Detector features, see the <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/">Amazon Fraud Detector User Guide</a>.</p>
#          <p>We provide the Query API as well as AWS software development kits (SDK) for Amazon Fraud Detector in Java and Python programming languages.</p>
#          <p>The Amazon Fraud Detector Query API provides HTTPS requests that use the HTTP verb GET or POST and a Query parameter <code>Action</code>. AWS SDK provides libraries, 
#             sample code, tutorials, and other resources for software developers who prefer to build applications using language-specific APIs instead of submitting a request over 
#             HTTP or HTTPS. These libraries provide basic functions that automatically take care of tasks such as cryptographically signing your requests, retrying requests, and 
#             handling error responses, so that it is easier for you to get started. For more information about the AWS SDKs, go to <a href="https://aws.amazon.com/developer/tools/">Tools to build on AWS</a> page, 
#             scroll down to the <b>SDK</b> section, and choose plus (+) sign to expand the section. 
#             </p>
module Aws::FraudDetector
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-frauddetector/types'
require_relative 'aws-sdk-frauddetector/paginators'
require_relative 'aws-sdk-frauddetector/schema'
require_relative 'aws-sdk-frauddetector/auth_parameters'
require_relative 'aws-sdk-frauddetector/auth_resolver'
require_relative 'aws-sdk-frauddetector/client'
require_relative 'aws-sdk-frauddetector/customizations'
require_relative 'aws-sdk-frauddetector/errors'
require_relative 'aws-sdk-frauddetector/endpoint_parameters'
require_relative 'aws-sdk-frauddetector/endpoint_provider'
require_relative 'aws-sdk-frauddetector/waiters'
