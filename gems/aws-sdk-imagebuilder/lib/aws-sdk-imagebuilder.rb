# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-imagebuilder/types'
require_relative 'aws-sdk-imagebuilder/client_api'
require_relative 'aws-sdk-imagebuilder/client'
require_relative 'aws-sdk-imagebuilder/errors'
require_relative 'aws-sdk-imagebuilder/resource'
require_relative 'aws-sdk-imagebuilder/customizations'

# This module provides support for EC2 Image Builder. This module is available in the
# `aws-sdk-imagebuilder` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     imagebuilder = Aws::Imagebuilder::Client.new
#     resp = imagebuilder.cancel_image_creation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from EC2 Image Builder are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Imagebuilder::Errors::ServiceError
#       # rescues all EC2 Image Builder API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Imagebuilder

  GEM_VERSION = '1.15.0'

end
