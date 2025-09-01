# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EKS', Module.new) unless Aws.const_defined?('EKS')

# @title Amazon Elastic Kubernetes Service
# <p>Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on
#             Amazon Web Services without needing to setup or maintain your own Kubernetes control plane. Kubernetes is an
#             open-source system for automating the deployment, scaling, and management of
#             containerized applications.</p>
#          <p>Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all
#             the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS
#             are fully compatible with applications running on any standard Kubernetes environment,
#             whether running in on-premises data centers or public clouds. This means that you can
#             easily migrate any standard Kubernetes application to Amazon EKS without any code modification
#             required.</p>
module Aws::EKS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-eks/types'
require_relative 'aws-sdk-eks/paginators'
require_relative 'aws-sdk-eks/schema'
require_relative 'aws-sdk-eks/auth_parameters'
require_relative 'aws-sdk-eks/auth_resolver'
require_relative 'aws-sdk-eks/client'
require_relative 'aws-sdk-eks/customizations'
require_relative 'aws-sdk-eks/errors'
require_relative 'aws-sdk-eks/endpoint_parameters'
require_relative 'aws-sdk-eks/endpoint_provider'
require_relative 'aws-sdk-eks/waiters'
