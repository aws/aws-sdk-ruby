# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Signer', Module.new) unless Aws.const_defined?('Signer')

# @title AWS Signer
# <p>AWS Signer is a fully managed code-signing service to help you ensure the trust and
# 			integrity of your code. </p>
# 		       <p>Signer supports the following applications:</p>
# 		       <p>With code signing for AWS Lambda, you can sign <a href="http://docs.aws.amazon.com/lambda/latest/dg/">AWS
# 				Lambda</a> deployment packages. Integrated support is provided for <a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/">Amazon S3</a>, <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/">Amazon
# 				CloudWatch</a>, and <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/">AWS CloudTrail</a>. In order
# 			to sign code, you create a signing profile and then use Signer to sign Lambda zip
# 			files in S3. </p>
# 		       <p>With code signing for IoT, you can sign code for any IoT device that is supported by AWS.
# 			IoT code signing is available for <a href="http://docs.aws.amazon.com/freertos/latest/userguide/">Amazon FreeRTOS</a> and <a href="http://docs.aws.amazon.com/iot/latest/developerguide/">AWS IoT Device Management</a>, and is integrated with <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager (ACM)</a>. In order to sign code, you import a third-party code-signing
# 			certificate using ACM, and use that to sign updates in Amazon FreeRTOS and AWS IoT Device Management. </p>
# 		       <p>With Signer and the Notation CLI from the <a href="https://notaryproject.dev/">Notary 
# 				Project</a>, you can sign container images stored in a container registry such
# 			as Amazon Elastic Container Registry (ECR). The signatures are stored in the registry
# 			alongside the images, where they are available for verifying image authenticity and
# 			integrity.</p>
# 		       <p>For more information about Signer, see the <a href="https://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html">AWS Signer Developer
# 			Guide</a>.</p>
module Aws::Signer
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-signer/types'
require_relative 'aws-sdk-signer/paginators'
require_relative 'aws-sdk-signer/schema'
require_relative 'aws-sdk-signer/auth_parameters'
require_relative 'aws-sdk-signer/auth_resolver'
require_relative 'aws-sdk-signer/client'
require_relative 'aws-sdk-signer/customizations'
require_relative 'aws-sdk-signer/errors'
require_relative 'aws-sdk-signer/endpoint_parameters'
require_relative 'aws-sdk-signer/endpoint_provider'
require_relative 'aws-sdk-signer/waiters'
