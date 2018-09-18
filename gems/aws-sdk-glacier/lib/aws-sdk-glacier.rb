# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-glacier/types'
require_relative 'aws-sdk-glacier/client_api'
require_relative 'aws-sdk-glacier/client'
require_relative 'aws-sdk-glacier/errors'
require_relative 'aws-sdk-glacier/waiters'
require_relative 'aws-sdk-glacier/resource'
require_relative 'aws-sdk-glacier/account'
require_relative 'aws-sdk-glacier/archive'
require_relative 'aws-sdk-glacier/job'
require_relative 'aws-sdk-glacier/multipart_upload'
require_relative 'aws-sdk-glacier/notification'
require_relative 'aws-sdk-glacier/vault'
require_relative 'aws-sdk-glacier/customizations'

# This module provides support for Amazon Glacier. This module is available in the
# `aws-sdk-glacier` gem.
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
# Errors returned from Amazon Glacier all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Glacier::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Glacier

  GEM_VERSION = '1.11.0'

end
