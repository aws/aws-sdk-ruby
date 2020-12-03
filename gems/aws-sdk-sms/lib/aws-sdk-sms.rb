# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sms/types'
require_relative 'aws-sdk-sms/client_api'
require_relative 'aws-sdk-sms/client'
require_relative 'aws-sdk-sms/errors'
require_relative 'aws-sdk-sms/resource'
require_relative 'aws-sdk-sms/customizations'

# This module provides support for AWS Server Migration Service. This module is available in the
# `aws-sdk-sms` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sms = Aws::SMS::Client.new
#     resp = sms.create_app(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Server Migration Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SMS::Errors::ServiceError
#       # rescues all AWS Server Migration Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SMS

  GEM_VERSION = '1.27.0'

end
