# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sagemaker/types'
require_relative 'aws-sdk-sagemaker/client_api'
require_relative 'aws-sdk-sagemaker/client'
require_relative 'aws-sdk-sagemaker/errors'
require_relative 'aws-sdk-sagemaker/waiters'
require_relative 'aws-sdk-sagemaker/resource'
require_relative 'aws-sdk-sagemaker/customizations'

# This module provides support for Amazon SageMaker Service. This module is available in the
# `aws-sdk-sagemaker` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker = Aws::SageMaker::Client.new
#     resp = sage_maker.add_tags(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMaker::Errors::ServiceError
#       # rescues all Amazon SageMaker Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMaker

  GEM_VERSION = '1.70.0'

end
