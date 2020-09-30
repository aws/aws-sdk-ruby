# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pinpointemail/types'
require_relative 'aws-sdk-pinpointemail/client_api'
require_relative 'aws-sdk-pinpointemail/client'
require_relative 'aws-sdk-pinpointemail/errors'
require_relative 'aws-sdk-pinpointemail/resource'
require_relative 'aws-sdk-pinpointemail/customizations'

# This module provides support for Amazon Pinpoint Email Service. This module is available in the
# `aws-sdk-pinpointemail` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint_email = Aws::PinpointEmail::Client.new
#     resp = pinpoint_email.create_configuration_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint Email Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PinpointEmail::Errors::ServiceError
#       # rescues all Amazon Pinpoint Email Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PinpointEmail

  GEM_VERSION = '1.24.0'

end
