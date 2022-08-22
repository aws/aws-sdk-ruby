# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediaconvert/types'
require_relative 'aws-sdk-mediaconvert/client_api'
require_relative 'aws-sdk-mediaconvert/client'
require_relative 'aws-sdk-mediaconvert/errors'
require_relative 'aws-sdk-mediaconvert/resource'
require_relative 'aws-sdk-mediaconvert/customizations'

# This module provides support for AWS Elemental MediaConvert. This module is available in the
# `aws-sdk-mediaconvert` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_convert = Aws::MediaConvert::Client.new
#     resp = media_convert.associate_certificate(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaConvert are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaConvert::Errors::ServiceError
#       # rescues all AWS Elemental MediaConvert API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaConvert

  GEM_VERSION = '1.92.0'

end
