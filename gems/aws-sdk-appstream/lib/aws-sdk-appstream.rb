# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appstream/types'
require_relative 'aws-sdk-appstream/client_api'
require_relative 'aws-sdk-appstream/client'
require_relative 'aws-sdk-appstream/errors'
require_relative 'aws-sdk-appstream/waiters'
require_relative 'aws-sdk-appstream/resource'
require_relative 'aws-sdk-appstream/customizations'

# This module provides support for Amazon AppStream. This module is available in the
# `aws-sdk-appstream` gem.
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
# Errors returned from Amazon AppStream all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppStream::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::AppStream

  GEM_VERSION = '1.15.0'

end
