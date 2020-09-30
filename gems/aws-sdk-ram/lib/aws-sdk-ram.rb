# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ram/types'
require_relative 'aws-sdk-ram/client_api'
require_relative 'aws-sdk-ram/client'
require_relative 'aws-sdk-ram/errors'
require_relative 'aws-sdk-ram/resource'
require_relative 'aws-sdk-ram/customizations'

# This module provides support for AWS Resource Access Manager. This module is available in the
# `aws-sdk-ram` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ram = Aws::RAM::Client.new
#     resp = ram.accept_resource_share_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Access Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RAM::Errors::ServiceError
#       # rescues all AWS Resource Access Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RAM

  GEM_VERSION = '1.22.0'

end
