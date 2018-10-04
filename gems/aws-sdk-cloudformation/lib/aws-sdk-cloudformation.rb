# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudformation/types'
require_relative 'aws-sdk-cloudformation/client_api'
require_relative 'aws-sdk-cloudformation/client'
require_relative 'aws-sdk-cloudformation/errors'
require_relative 'aws-sdk-cloudformation/waiters'
require_relative 'aws-sdk-cloudformation/resource'
require_relative 'aws-sdk-cloudformation/event'
require_relative 'aws-sdk-cloudformation/stack'
require_relative 'aws-sdk-cloudformation/stack_resource'
require_relative 'aws-sdk-cloudformation/stack_resource_summary'
require_relative 'aws-sdk-cloudformation/customizations'

# This module provides support for AWS CloudFormation. This module is available in the
# `aws-sdk-cloudformation` gem.
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
# Errors returned from AWS CloudFormation all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudFormation::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::CloudFormation

  GEM_VERSION = '1.8.0'

end
