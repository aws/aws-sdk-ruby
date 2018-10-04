# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workspaces/types'
require_relative 'aws-sdk-workspaces/client_api'
require_relative 'aws-sdk-workspaces/client'
require_relative 'aws-sdk-workspaces/errors'
require_relative 'aws-sdk-workspaces/resource'
require_relative 'aws-sdk-workspaces/customizations'

# This module provides support for Amazon WorkSpaces. This module is available in the
# `aws-sdk-workspaces` gem.
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
# Errors returned from Amazon WorkSpaces all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkSpaces::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::WorkSpaces

  GEM_VERSION = '1.5.0'

end
