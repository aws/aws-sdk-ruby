# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pinpoint/types'
require_relative 'aws-sdk-pinpoint/client_api'
require_relative 'aws-sdk-pinpoint/client'
require_relative 'aws-sdk-pinpoint/errors'
require_relative 'aws-sdk-pinpoint/resource'
require_relative 'aws-sdk-pinpoint/customizations'

# This module provides support for Amazon Pinpoint. This module is available in the
# `aws-sdk-pinpoint` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint = Aws::Pinpoint::Client.new
#     resp = pinpoint.create_app(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pinpoint::Errors::ServiceError
#       # rescues all Amazon Pinpoint API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Pinpoint

  GEM_VERSION = '1.41.0'

end
