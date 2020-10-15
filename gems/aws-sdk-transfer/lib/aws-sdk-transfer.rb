# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-transfer/types'
require_relative 'aws-sdk-transfer/client_api'
require_relative 'aws-sdk-transfer/client'
require_relative 'aws-sdk-transfer/errors'
require_relative 'aws-sdk-transfer/resource'
require_relative 'aws-sdk-transfer/customizations'

# This module provides support for AWS Transfer Family. This module is available in the
# `aws-sdk-transfer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     transfer = Aws::Transfer::Client.new
#     resp = transfer.create_server(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Transfer Family are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Transfer::Errors::ServiceError
#       # rescues all AWS Transfer Family API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Transfer

  GEM_VERSION = '1.28.0'

end
