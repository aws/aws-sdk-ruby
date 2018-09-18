# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-health/types'
require_relative 'aws-sdk-health/client_api'
require_relative 'aws-sdk-health/client'
require_relative 'aws-sdk-health/errors'
require_relative 'aws-sdk-health/resource'
require_relative 'aws-sdk-health/customizations'

# This module provides support for AWS Health APIs and Notifications. This module is available in the
# `aws-sdk-health` gem.
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
# Errors returned from AWS Health APIs and Notifications all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Health::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Health

  GEM_VERSION = '1.5.0'

end
