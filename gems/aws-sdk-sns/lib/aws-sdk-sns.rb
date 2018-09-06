# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sns/types'
require_relative 'aws-sdk-sns/client_api'
require_relative 'aws-sdk-sns/client'
require_relative 'aws-sdk-sns/errors'
require_relative 'aws-sdk-sns/resource'
require_relative 'aws-sdk-sns/platform_application'
require_relative 'aws-sdk-sns/platform_endpoint'
require_relative 'aws-sdk-sns/subscription'
require_relative 'aws-sdk-sns/topic'
require_relative 'aws-sdk-sns/customizations'

# This module provides support for Amazon Simple Notification Service. This module is available in the
# `aws-sdk-sns` gem.
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
# Errors returned from Amazon Simple Notification Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SNS::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::SNS

  GEM_VERSION = '1.5.0'

end
