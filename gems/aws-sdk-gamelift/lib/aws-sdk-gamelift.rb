# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-gamelift/types'
require_relative 'aws-sdk-gamelift/client_api'
require_relative 'aws-sdk-gamelift/client'
require_relative 'aws-sdk-gamelift/errors'
require_relative 'aws-sdk-gamelift/resource'
require_relative 'aws-sdk-gamelift/customizations'

# This module provides support for Amazon GameLift. This module is available in the
# `aws-sdk-gamelift` gem.
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
# Errors returned from Amazon GameLift all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GameLift::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::GameLift

  GEM_VERSION = '1.7.0'

end
