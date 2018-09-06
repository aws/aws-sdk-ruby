# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-apigateway/types'
require_relative 'aws-sdk-apigateway/client_api'
require_relative 'aws-sdk-apigateway/client'
require_relative 'aws-sdk-apigateway/errors'
require_relative 'aws-sdk-apigateway/resource'
require_relative 'aws-sdk-apigateway/customizations'

# This module provides support for Amazon API Gateway. This module is available in the
# `aws-sdk-apigateway` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon API Gateway all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::APIGateway::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::APIGateway

  GEM_VERSION = '1.16.0'

end
