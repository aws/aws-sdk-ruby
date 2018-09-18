# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-dax/types'
require_relative 'aws-sdk-dax/client_api'
require_relative 'aws-sdk-dax/client'
require_relative 'aws-sdk-dax/errors'
require_relative 'aws-sdk-dax/resource'
require_relative 'aws-sdk-dax/customizations'

# This module provides support for Amazon DynamoDB Accelerator (DAX). This module is available in the
# `aws-sdk-dax` gem.
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
# Errors returned from Amazon DynamoDB Accelerator (DAX) all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DAX::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::DAX

  GEM_VERSION = '1.5.0'

end
