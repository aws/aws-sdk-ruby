# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-medialive/types'
require_relative 'aws-sdk-medialive/client_api'
require_relative 'aws-sdk-medialive/client'
require_relative 'aws-sdk-medialive/errors'
require_relative 'aws-sdk-medialive/waiters'
require_relative 'aws-sdk-medialive/resource'
require_relative 'aws-sdk-medialive/customizations'

# This module provides support for AWS Elemental MediaLive. This module is available in the
# `aws-sdk-medialive` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_live = Aws::MediaLive::Client.new
#     resp = media_live.accept_input_device_transfer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaLive are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaLive::Errors::ServiceError
#       # rescues all AWS Elemental MediaLive API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaLive

  GEM_VERSION = '1.57.0'

end
