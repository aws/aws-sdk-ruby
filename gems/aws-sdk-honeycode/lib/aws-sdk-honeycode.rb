# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-honeycode/types'
require_relative 'aws-sdk-honeycode/client_api'
require_relative 'aws-sdk-honeycode/client'
require_relative 'aws-sdk-honeycode/errors'
require_relative 'aws-sdk-honeycode/resource'
require_relative 'aws-sdk-honeycode/customizations'

# This module provides support for Amazon Honeycode. This module is available in the
# `aws-sdk-honeycode` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     honeycode = Aws::Honeycode::Client.new
#     resp = honeycode.get_screen_data(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Honeycode are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Honeycode::Errors::ServiceError
#       # rescues all Amazon Honeycode API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Honeycode

  GEM_VERSION = '1.3.0'

end
