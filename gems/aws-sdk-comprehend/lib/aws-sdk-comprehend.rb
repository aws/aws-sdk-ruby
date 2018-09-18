# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-comprehend/types'
require_relative 'aws-sdk-comprehend/client_api'
require_relative 'aws-sdk-comprehend/client'
require_relative 'aws-sdk-comprehend/errors'
require_relative 'aws-sdk-comprehend/resource'
require_relative 'aws-sdk-comprehend/customizations'

# This module provides support for Amazon Comprehend. This module is available in the
# `aws-sdk-comprehend` gem.
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
# Errors returned from Amazon Comprehend all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Comprehend::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Comprehend

  GEM_VERSION = '1.5.0'

end
