# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-support/types'
require_relative 'aws-sdk-support/client_api'
require_relative 'aws-sdk-support/client'
require_relative 'aws-sdk-support/errors'
require_relative 'aws-sdk-support/resource'
require_relative 'aws-sdk-support/customizations'

# This module provides support for AWS Support. This module is available in the
# `aws-sdk-support` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     support = Aws::Support::Client.new
#     resp = support.add_attachments_to_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Support are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Support::Errors::ServiceError
#       # rescues all AWS Support API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Support

  GEM_VERSION = '1.28.0'

end
