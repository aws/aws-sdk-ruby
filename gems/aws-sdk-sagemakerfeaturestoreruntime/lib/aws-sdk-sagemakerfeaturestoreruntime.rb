# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sagemakerfeaturestoreruntime/types'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/client_api'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/plugins/endpoints.rb'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/client'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/errors'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/resource'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/endpoint_parameters'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/endpoint_provider'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/endpoints'
require_relative 'aws-sdk-sagemakerfeaturestoreruntime/customizations'

# This module provides support for Amazon SageMaker Feature Store Runtime. This module is available in the
# `aws-sdk-sagemakerfeaturestoreruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_feature_store_runtime = Aws::SageMakerFeatureStoreRuntime::Client.new
#     resp = sage_maker_feature_store_runtime.batch_get_record(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Feature Store Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerFeatureStoreRuntime::Errors::ServiceError
#       # rescues all Amazon SageMaker Feature Store Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerFeatureStoreRuntime

  GEM_VERSION = '1.22.0'

end
