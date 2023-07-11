# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-machinelearning/types'
require_relative 'aws-sdk-machinelearning/client_api'
require_relative 'aws-sdk-machinelearning/plugins/endpoints.rb'
require_relative 'aws-sdk-machinelearning/client'
require_relative 'aws-sdk-machinelearning/errors'
require_relative 'aws-sdk-machinelearning/waiters'
require_relative 'aws-sdk-machinelearning/resource'
require_relative 'aws-sdk-machinelearning/endpoint_parameters'
require_relative 'aws-sdk-machinelearning/endpoint_provider'
require_relative 'aws-sdk-machinelearning/endpoints'
require_relative 'aws-sdk-machinelearning/customizations'

# This module provides support for Amazon Machine Learning. This module is available in the
# `aws-sdk-machinelearning` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     machine_learning = Aws::MachineLearning::Client.new
#     resp = machine_learning.add_tags(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Machine Learning are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MachineLearning::Errors::ServiceError
#       # rescues all Amazon Machine Learning API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MachineLearning

  GEM_VERSION = '1.44.0'

end
