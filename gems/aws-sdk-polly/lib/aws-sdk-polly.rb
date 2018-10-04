# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-polly/types'
require_relative 'aws-sdk-polly/client_api'
require_relative 'aws-sdk-polly/client'
require_relative 'aws-sdk-polly/errors'
require_relative 'aws-sdk-polly/resource'
require_relative 'aws-sdk-polly/customizations'

# This module provides support for Amazon Polly. This module is available in the
# `aws-sdk-polly` gem.
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
# Errors returned from Amazon Polly all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Polly::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Polly

  GEM_VERSION = '1.11.0'

end
