# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ECR', Module.new) unless Aws.const_defined?('ECR')

# @title Amazon Elastic Container Registry
# <fullname>Amazon Elastic Container Registry</fullname>
#          <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the
#             familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR
#             provides a secure, scalable, and reliable registry for your Docker or Open Container
#             Initiative (OCI) images. Amazon ECR supports private repositories with resource-based
#             permissions using IAM so that specific users or Amazon EC2 instances can access
#             repositories and images.</p>
#          <p>Amazon ECR has service endpoints in each supported Region. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/ecr.html">Amazon ECR endpoints</a> in the
#                 <i>Amazon Web Services General Reference</i>.</p>
module Aws::ECR
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ecr/types'
require_relative 'aws-sdk-ecr/paginators'
require_relative 'aws-sdk-ecr/schema'
require_relative 'aws-sdk-ecr/auth_parameters'
require_relative 'aws-sdk-ecr/auth_resolver'
require_relative 'aws-sdk-ecr/client'
require_relative 'aws-sdk-ecr/customizations'
require_relative 'aws-sdk-ecr/errors'
require_relative 'aws-sdk-ecr/endpoint_parameters'
require_relative 'aws-sdk-ecr/endpoint_provider'
require_relative 'aws-sdk-ecr/waiters'
