# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-personalize/types'
require_relative 'aws-sdk-personalize/client_api'
require_relative 'aws-sdk-personalize/client'
require_relative 'aws-sdk-personalize/errors'
require_relative 'aws-sdk-personalize/resource'
require_relative 'aws-sdk-personalize/customizations'

# This module provides support for Amazon Personalize. This module is available in the
# `aws-sdk-personalize` gem.
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
# Errors returned from Amazon Personalize all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Personalize::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Personalize

  GEM_VERSION = '1.0.0'

end
