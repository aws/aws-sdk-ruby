# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-securityhub/types'
require_relative 'aws-sdk-securityhub/client_api'
require_relative 'aws-sdk-securityhub/client'
require_relative 'aws-sdk-securityhub/errors'
require_relative 'aws-sdk-securityhub/resource'
require_relative 'aws-sdk-securityhub/customizations'

# This module provides support for AWS SecurityHub. This module is available in the
# `aws-sdk-securityhub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     security_hub = Aws::SecurityHub::Client.new
#     resp = security_hub.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SecurityHub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SecurityHub::Errors::ServiceError
#       # rescues all AWS SecurityHub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SecurityHub

  GEM_VERSION = '1.35.0'

end
