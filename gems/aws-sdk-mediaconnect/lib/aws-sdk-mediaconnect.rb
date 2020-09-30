# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediaconnect/types'
require_relative 'aws-sdk-mediaconnect/client_api'
require_relative 'aws-sdk-mediaconnect/client'
require_relative 'aws-sdk-mediaconnect/errors'
require_relative 'aws-sdk-mediaconnect/resource'
require_relative 'aws-sdk-mediaconnect/customizations'

# This module provides support for AWS MediaConnect. This module is available in the
# `aws-sdk-mediaconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_connect = Aws::MediaConnect::Client.new
#     resp = media_connect.add_flow_outputs(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS MediaConnect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaConnect::Errors::ServiceError
#       # rescues all AWS MediaConnect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaConnect

  GEM_VERSION = '1.28.0'

end
