# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticinference/types'
require_relative 'aws-sdk-elasticinference/client_api'
require_relative 'aws-sdk-elasticinference/client'
require_relative 'aws-sdk-elasticinference/errors'
require_relative 'aws-sdk-elasticinference/resource'
require_relative 'aws-sdk-elasticinference/customizations'

# This module provides support for Amazon Elastic  Inference. This module is available in the
# `aws-sdk-elasticinference` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_inference = Aws::ElasticInference::Client.new
#     resp = elastic_inference.describe_accelerator_offerings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic  Inference are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticInference::Errors::ServiceError
#       # rescues all Amazon Elastic  Inference API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticInference

  GEM_VERSION = '1.10.0'

end
