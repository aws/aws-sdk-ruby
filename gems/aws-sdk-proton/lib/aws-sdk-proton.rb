# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-proton/types'
require_relative 'aws-sdk-proton/client_api'
require_relative 'aws-sdk-proton/client'
require_relative 'aws-sdk-proton/errors'
require_relative 'aws-sdk-proton/waiters'
require_relative 'aws-sdk-proton/resource'
require_relative 'aws-sdk-proton/customizations'

# This module provides support for AWS Proton. This module is available in the
# `aws-sdk-proton` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     proton = Aws::Proton::Client.new
#     resp = proton.accept_environment_account_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Proton are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Proton::Errors::ServiceError
#       # rescues all AWS Proton API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Proton

  GEM_VERSION = '1.12.0'

end
