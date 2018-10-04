# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-xray/types'
require_relative 'aws-sdk-xray/client_api'
require_relative 'aws-sdk-xray/client'
require_relative 'aws-sdk-xray/errors'
require_relative 'aws-sdk-xray/resource'
require_relative 'aws-sdk-xray/customizations'

# This module provides support for AWS X-Ray. This module is available in the
# `aws-sdk-xray` gem.
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
# Errors returned from AWS X-Ray all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::XRay::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::XRay

  GEM_VERSION = '1.6.0'

end
