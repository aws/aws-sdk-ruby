# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-athena/types'
require_relative 'aws-sdk-athena/client_api'
require_relative 'aws-sdk-athena/client'
require_relative 'aws-sdk-athena/errors'
require_relative 'aws-sdk-athena/resource'
require_relative 'aws-sdk-athena/customizations'

# This module provides support for Amazon Athena. This module is available in the
# `aws-sdk-athena` gem.
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
# Errors returned from Amazon Athena all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Athena::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Athena

  GEM_VERSION = '1.3.0'

end
