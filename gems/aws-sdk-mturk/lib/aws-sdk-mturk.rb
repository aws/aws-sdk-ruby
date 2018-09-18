# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mturk/types'
require_relative 'aws-sdk-mturk/client_api'
require_relative 'aws-sdk-mturk/client'
require_relative 'aws-sdk-mturk/errors'
require_relative 'aws-sdk-mturk/resource'
require_relative 'aws-sdk-mturk/customizations'

# This module provides support for Amazon Mechanical Turk. This module is available in the
# `aws-sdk-mturk` gem.
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
# Errors returned from Amazon Mechanical Turk all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MTurk::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::MTurk

  GEM_VERSION = '1.6.0'

end
