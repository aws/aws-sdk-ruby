# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-clouddirectory/types'
require_relative 'aws-sdk-clouddirectory/client_api'
require_relative 'aws-sdk-clouddirectory/client'
require_relative 'aws-sdk-clouddirectory/errors'
require_relative 'aws-sdk-clouddirectory/resource'
require_relative 'aws-sdk-clouddirectory/customizations'

# This module provides support for Amazon CloudDirectory. This module is available in the
# `aws-sdk-clouddirectory` gem.
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
# Errors returned from Amazon CloudDirectory all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudDirectory::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::CloudDirectory

  GEM_VERSION = '1.20.0'

end
