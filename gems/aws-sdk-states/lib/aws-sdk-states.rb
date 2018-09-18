# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-states/types'
require_relative 'aws-sdk-states/client_api'
require_relative 'aws-sdk-states/client'
require_relative 'aws-sdk-states/errors'
require_relative 'aws-sdk-states/resource'
require_relative 'aws-sdk-states/customizations'

# This module provides support for AWS Step Functions. This module is available in the
# `aws-sdk-states` gem.
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
# Errors returned from AWS Step Functions all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::States::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::States

  GEM_VERSION = '1.5.0'

end
