# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ServerlessApplicationRepository', Module.new) unless Aws.const_defined?('ServerlessApplicationRepository')

# @title AWSServerlessApplicationRepository
# <p>The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
#  and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
#  see Serverless Computing and Applications on the AWS website.</p><p>The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
#  all levels can get started with serverless computing without needing to learn anything new. You can use category 
#  keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
#  You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
#  configure any required fields, and deploy it with a few clicks. </p><p>You can also easily publish applications, sharing them publicly with the community at large, or privately
#  within your team or across your organization. To publish a serverless application (or app), you can use the
#  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
#  code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
#  For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
#  GitHub repository.</p><p>The AWS Serverless Application Repository Developer Guide contains more information about the two developer
#  experiences available:</p><ul>
#  <li>
#  <p>Consuming Applications – Browse for applications and view information about them, including
#  source code and readme files. Also install, configure, and deploy applications of your choosing. </p>
#  <p>Publishing Applications – Configure and upload applications to make them available to other
#  developers, and publish new versions of applications. </p>
#  </li>
#  </ul>
module Aws::ServerlessApplicationRepository
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-serverlessapplicationrepository/types'
require_relative 'aws-sdk-serverlessapplicationrepository/paginators'
require_relative 'aws-sdk-serverlessapplicationrepository/schema'
require_relative 'aws-sdk-serverlessapplicationrepository/auth_parameters'
require_relative 'aws-sdk-serverlessapplicationrepository/auth_resolver'
require_relative 'aws-sdk-serverlessapplicationrepository/client'
require_relative 'aws-sdk-serverlessapplicationrepository/customizations'
require_relative 'aws-sdk-serverlessapplicationrepository/errors'
require_relative 'aws-sdk-serverlessapplicationrepository/endpoint_parameters'
require_relative 'aws-sdk-serverlessapplicationrepository/endpoint_provider'
require_relative 'aws-sdk-serverlessapplicationrepository/waiters'
