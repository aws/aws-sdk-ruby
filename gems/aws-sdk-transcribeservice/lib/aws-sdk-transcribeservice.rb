# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-transcribeservice/types'
require_relative 'aws-sdk-transcribeservice/client_api'
require_relative 'aws-sdk-transcribeservice/client'
require_relative 'aws-sdk-transcribeservice/errors'
require_relative 'aws-sdk-transcribeservice/resource'
require_relative 'aws-sdk-transcribeservice/customizations'

# This module provides support for Amazon Transcribe Service. This module is available in the
# `aws-sdk-transcribeservice` gem.
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
# Errors returned from Amazon Transcribe Service all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TranscribeService::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::TranscribeService

  GEM_VERSION = '1.6.0'

end
