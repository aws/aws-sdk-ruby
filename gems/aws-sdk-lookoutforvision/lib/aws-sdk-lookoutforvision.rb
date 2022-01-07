# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lookoutforvision/types'
require_relative 'aws-sdk-lookoutforvision/client_api'
require_relative 'aws-sdk-lookoutforvision/client'
require_relative 'aws-sdk-lookoutforvision/errors'
require_relative 'aws-sdk-lookoutforvision/resource'
require_relative 'aws-sdk-lookoutforvision/customizations'

# This module provides support for Amazon Lookout for Vision. This module is available in the
# `aws-sdk-lookoutforvision` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lookoutfor_vision = Aws::LookoutforVision::Client.new
#     resp = lookoutfor_vision.create_dataset(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lookout for Vision are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LookoutforVision::Errors::ServiceError
#       # rescues all Amazon Lookout for Vision API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LookoutforVision

  GEM_VERSION = '1.11.0'

end
