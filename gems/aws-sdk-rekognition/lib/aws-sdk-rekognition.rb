# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-rekognition/types'
require_relative 'aws-sdk-rekognition/client_api'
require_relative 'aws-sdk-rekognition/client'
require_relative 'aws-sdk-rekognition/errors'
require_relative 'aws-sdk-rekognition/waiters'
require_relative 'aws-sdk-rekognition/resource'
require_relative 'aws-sdk-rekognition/customizations'

# This module provides support for Amazon Rekognition. This module is available in the
# `aws-sdk-rekognition` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     rekognition = Aws::Rekognition::Client.new
#     resp = rekognition.compare_faces(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Rekognition are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Rekognition::Errors::ServiceError
#       # rescues all Amazon Rekognition API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Rekognition

  GEM_VERSION = '1.47.0'

end
