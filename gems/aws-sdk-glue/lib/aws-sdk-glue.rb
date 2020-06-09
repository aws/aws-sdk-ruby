# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-glue/types'
require_relative 'aws-sdk-glue/client_api'
require_relative 'aws-sdk-glue/client'
require_relative 'aws-sdk-glue/errors'
require_relative 'aws-sdk-glue/resource'
require_relative 'aws-sdk-glue/customizations'

# This module provides support for AWS Glue. This module is available in the
# `aws-sdk-glue` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     glue = Aws::Glue::Client.new
#     resp = glue.batch_create_partition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Glue are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Glue::Errors::ServiceError
#       # rescues all AWS Glue API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Glue

  GEM_VERSION = '1.57.0'

end
