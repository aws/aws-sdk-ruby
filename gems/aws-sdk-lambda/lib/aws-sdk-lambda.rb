# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lambda/types'
require_relative 'aws-sdk-lambda/client_api'
require_relative 'aws-sdk-lambda/client'
require_relative 'aws-sdk-lambda/errors'
require_relative 'aws-sdk-lambda/waiters'
require_relative 'aws-sdk-lambda/resource'
require_relative 'aws-sdk-lambda/customizations'

# This module provides support for AWS Lambda. This module is available in the
# `aws-sdk-lambda` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda = Aws::Lambda::Client.new
#     resp = lambda.add_layer_version_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lambda are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lambda::Errors::ServiceError
#       # rescues all AWS Lambda API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Lambda

  GEM_VERSION = '1.51.0'

end
