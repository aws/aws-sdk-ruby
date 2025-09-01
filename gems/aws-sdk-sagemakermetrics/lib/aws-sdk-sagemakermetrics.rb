# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerMetrics', Module.new) unless Aws.const_defined?('SageMakerMetrics')

# @title Amazon SageMaker Metrics Service
# <p>Contains all data plane API operations and data types for Amazon SageMaker Metrics. 
#          Use these APIs to put and retrieve (get) features related to your training run.</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html">BatchPutMetrics</a>
#                </p>
#             </li>
#          </ul>
module Aws::SageMakerMetrics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakermetrics/types'
require_relative 'aws-sdk-sagemakermetrics/paginators'
require_relative 'aws-sdk-sagemakermetrics/schema'
require_relative 'aws-sdk-sagemakermetrics/auth_parameters'
require_relative 'aws-sdk-sagemakermetrics/auth_resolver'
require_relative 'aws-sdk-sagemakermetrics/client'
require_relative 'aws-sdk-sagemakermetrics/customizations'
require_relative 'aws-sdk-sagemakermetrics/errors'
require_relative 'aws-sdk-sagemakermetrics/endpoint_parameters'
require_relative 'aws-sdk-sagemakermetrics/endpoint_provider'
require_relative 'aws-sdk-sagemakermetrics/waiters'
