# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-fsx/types'
require_relative 'aws-sdk-fsx/client_api'
require_relative 'aws-sdk-fsx/client'
require_relative 'aws-sdk-fsx/errors'
require_relative 'aws-sdk-fsx/resource'
require_relative 'aws-sdk-fsx/customizations'

# This module provides support for Amazon FSx. This module is available in the
# `aws-sdk-fsx` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     f_sx = Aws::FSx::Client.new
#     resp = f_sx.cancel_data_repository_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon FSx are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FSx::Errors::ServiceError
#       # rescues all Amazon FSx API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FSx

  GEM_VERSION = '1.31.0'

end
