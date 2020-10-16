# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-organizations/types'
require_relative 'aws-sdk-organizations/client_api'
require_relative 'aws-sdk-organizations/client'
require_relative 'aws-sdk-organizations/errors'
require_relative 'aws-sdk-organizations/resource'
require_relative 'aws-sdk-organizations/customizations'

# This module provides support for AWS Organizations. This module is available in the
# `aws-sdk-organizations` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     organizations = Aws::Organizations::Client.new
#     resp = organizations.accept_handshake(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Organizations are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Organizations::Errors::ServiceError
#       # rescues all AWS Organizations API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Organizations

  GEM_VERSION = '1.53.0'

end
