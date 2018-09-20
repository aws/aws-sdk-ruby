# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-directoryservice/types'
require_relative 'aws-sdk-directoryservice/client_api'
require_relative 'aws-sdk-directoryservice/client'
require_relative 'aws-sdk-directoryservice/errors'
require_relative 'aws-sdk-directoryservice/resource'
require_relative 'aws-sdk-directoryservice/customizations'

# This module provides support for AWS Directory Service. This module is available in the
# `aws-sdk-directoryservice` gem.
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
# Errors returned from AWS Directory Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DirectoryService::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::DirectoryService

  GEM_VERSION = '1.6.0'

end
