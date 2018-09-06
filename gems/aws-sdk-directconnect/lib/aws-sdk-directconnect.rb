# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-directconnect/types'
require_relative 'aws-sdk-directconnect/client_api'
require_relative 'aws-sdk-directconnect/client'
require_relative 'aws-sdk-directconnect/errors'
require_relative 'aws-sdk-directconnect/resource'
require_relative 'aws-sdk-directconnect/customizations'

# This module provides support for AWS Direct Connect. This module is available in the
# `aws-sdk-directconnect` gem.
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
# Errors returned from AWS Direct Connect all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DirectConnect::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::DirectConnect

  GEM_VERSION = '1.5.0'

end
