# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerFeatureStoreRuntime', Module.new) unless Aws.const_defined?('SageMakerFeatureStoreRuntime')

# @title Amazon SageMaker Feature Store Runtime
# <p>Contains all data plane API operations and data types for the Amazon SageMaker Feature
#          Store. Use this API to put, delete, and retrieve (get) features from a feature
#          store.</p>
#          <p>Use the following operations to configure your <code>OnlineStore</code> and
#             <code>OfflineStore</code> features, and to create and manage feature groups:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html">CreateFeatureGroup</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html">DeleteFeatureGroup</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html">DescribeFeatureGroup</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html">ListFeatureGroups</a>
#                </p>
#             </li>
#          </ul>
module Aws::SageMakerFeatureStoreRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakerfeaturestoreruntime/types'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/paginators'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/schema'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/auth_parameters'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/auth_resolver'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/client'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/customizations'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/errors'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/endpoint_parameters'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/endpoint_provider'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/waiters'
