# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lightsail/types'
require_relative 'aws-sdk-lightsail/client_api'
require_relative 'aws-sdk-lightsail/client'
require_relative 'aws-sdk-lightsail/errors'
require_relative 'aws-sdk-lightsail/resource'
require_relative 'aws-sdk-lightsail/customizations'

# This module provides support for Amazon Lightsail. This module is available in the
# `aws-sdk-lightsail` gem.
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
# Errors returned from Amazon Lightsail all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lightsail::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Lightsail

  GEM_VERSION = '1.7.0'

end
