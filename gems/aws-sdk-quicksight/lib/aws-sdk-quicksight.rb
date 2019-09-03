# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-quicksight/types'
require_relative 'aws-sdk-quicksight/client_api'
require_relative 'aws-sdk-quicksight/client'
require_relative 'aws-sdk-quicksight/errors'
require_relative 'aws-sdk-quicksight/resource'
require_relative 'aws-sdk-quicksight/customizations'

# This module provides support for Amazon QuickSight. This module is available in the
# `aws-sdk-quicksight` gem.
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
# Errors returned from Amazon QuickSight all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QuickSight::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::QuickSight

  GEM_VERSION = '1.12.0'

end
