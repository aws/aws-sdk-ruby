# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ECRPUBLIC', Module.new) unless Aws.const_defined?('ECRPUBLIC')

# @title Amazon Elastic Container Registry Public
# <fullname>Amazon Elastic Container Registry Public</fullname>
#          <p>Amazon Elastic Container Registry Public (Amazon ECR Public) is a managed container image registry service. Amazon ECR provides both
#          public and private registries to host your container images. You can use the Docker CLI or
#          your preferred client to push, pull, and manage images. Amazon ECR provides a secure, scalable,
#          and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR
#          supports public repositories with this API. For information about the Amazon ECR API for private
#          repositories, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html">Amazon Elastic Container Registry API Reference</a>.</p>
module Aws::ECRPUBLIC
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ecrpublic/types'
require_relative 'aws-sdk-ecrpublic/paginators'
require_relative 'aws-sdk-ecrpublic/schema'
require_relative 'aws-sdk-ecrpublic/auth_parameters'
require_relative 'aws-sdk-ecrpublic/auth_resolver'
require_relative 'aws-sdk-ecrpublic/client'
require_relative 'aws-sdk-ecrpublic/customizations'
require_relative 'aws-sdk-ecrpublic/errors'
require_relative 'aws-sdk-ecrpublic/endpoint_parameters'
require_relative 'aws-sdk-ecrpublic/endpoint_provider'
require_relative 'aws-sdk-ecrpublic/waiters'
