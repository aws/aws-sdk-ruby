# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ivs/types'
require_relative 'aws-sdk-ivs/client_api'
require_relative 'aws-sdk-ivs/client'
require_relative 'aws-sdk-ivs/errors'
require_relative 'aws-sdk-ivs/resource'
require_relative 'aws-sdk-ivs/customizations'

# This module provides support for Amazon Interactive Video Service. This module is available in the
# `aws-sdk-ivs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivs = Aws::IVS::Client.new
#     resp = ivs.batch_get_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IVS::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IVS

  GEM_VERSION = '1.5.0'

end
