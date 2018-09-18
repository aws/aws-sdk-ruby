# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudtrail/types'
require_relative 'aws-sdk-cloudtrail/client_api'
require_relative 'aws-sdk-cloudtrail/client'
require_relative 'aws-sdk-cloudtrail/errors'
require_relative 'aws-sdk-cloudtrail/resource'
require_relative 'aws-sdk-cloudtrail/customizations'

# This module provides support for AWS CloudTrail. This module is available in the
# `aws-sdk-cloudtrail` gem.
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
# Errors returned from AWS CloudTrail all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudTrail::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::CloudTrail

  GEM_VERSION = '1.3.0'

end
