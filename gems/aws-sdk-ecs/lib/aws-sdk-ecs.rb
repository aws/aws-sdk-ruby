# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ecs/types'
require_relative 'aws-sdk-ecs/client_api'
require_relative 'aws-sdk-ecs/client'
require_relative 'aws-sdk-ecs/errors'
require_relative 'aws-sdk-ecs/waiters'
require_relative 'aws-sdk-ecs/resource'
require_relative 'aws-sdk-ecs/customizations'

# This module provides support for Amazon EC2 Container Service. This module is available in the
# `aws-sdk-ecs` gem.
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
# Errors returned from Amazon EC2 Container Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ECS::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ECS

  GEM_VERSION = '1.20.0'

end
