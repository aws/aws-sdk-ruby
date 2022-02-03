# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-connect/types'
require_relative 'aws-sdk-connect/client_api'
require_relative 'aws-sdk-connect/client'
require_relative 'aws-sdk-connect/errors'
require_relative 'aws-sdk-connect/resource'
require_relative 'aws-sdk-connect/customizations'

# This module provides support for Amazon Connect Service. This module is available in the
# `aws-sdk-connect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect = Aws::Connect::Client.new
#     resp = connect.associate_approved_origin(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Connect::Errors::ServiceError
#       # rescues all Amazon Connect Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Connect

  GEM_VERSION = '1.63.0'

end
